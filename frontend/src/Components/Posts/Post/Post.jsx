import React, { useEffect, useState, useCallback } from 'react';
import DisplayReactions from '../Reactions/DisplayReactions';
import DeletePost from './DeletePost';
import EditPost from './EditPost';
import DisplayComments from '../Comments/DisplayComments';
import CreateComment from '../Comments/CreateComment';
import userService from '../../../Services/user.service';
import commentService from '../../../Services/comment.service';
import { Box, Typography } from '@mui/material';
import styled from '@emotion/styled';
import { StandardContainer, StyledNavLink, PostHeader } from '../../../StyledComponents/StyledComponents';


const PostActions = styled(Box)(({ theme }) => ({
    display: 'flex',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'flex-end',
    gap: '0.5rem',
}));

const PostContent = styled(Typography)(({ theme }) => ({
    textAlign: 'left',
    marginBottom: '1rem',
    width: '100%',
}));

function Post(props) {
    const { post, user, onPostDelete, onPostUpdate } = props;
    const [postOwner, setPostOwner] = useState("");
    const [canManagePost, setCanManagePost] = useState(false);
    const [isCommentInputVisible, setIsCommentInputVisible] = useState(false);
    const [comments, setComments] = useState([]);

    useEffect(() => {
        try {
            userService.getAccountOfPost(post.postId)
                .then(response => {
                    setPostOwner(response);
                    if (response.username === user.username) {
                        setCanManagePost(true);
                    }
                });
        } catch (error) {
            console.log("Error fetching post owner: ", error);
        }
    }, [post.postId, user.username]);

    const fetchComments = useCallback(() => {
        commentService.getCommentsByPostId(post.postId)
            .then(response => {
                setComments(response);
            });
    }, [post.postId]);

    useEffect(() => {
        fetchComments();
    }, [fetchComments]);

    const handleAddCommentClick = () => {
        setIsCommentInputVisible(() => !(isCommentInputVisible));
    };

    const handleCancelComment = () => {
        setIsCommentInputVisible(false);
    };

    return (
        <StandardContainer
            style={
                {
                    margin: "0.5rem 0",
                }
            }
        >
            <PostHeader>
                <StyledNavLink to={`/profile/${postOwner.accountId}`}>
                    <Typography variant="h6">{postOwner.username}</Typography>
                </StyledNavLink>
                
                <Typography variant="caption">
                     {post.dateCreated
                     ? new Date(post.dateCreated).toLocaleString()
                    : "No timestamp available"}
                </Typography>


            </PostHeader>
            <PostContent variant="body1">{post.content}</PostContent>
            <DisplayReactions  entityId={post.postId} entityType="post" user={user} comments={comments} onAddCommentClick={handleAddCommentClick} />
            {isCommentInputVisible && (
                <CreateComment
                    post={post}
                    user={user}
                    fetchComments={fetchComments}
                    onCancel={handleCancelComment}
                />
            )}
            <DisplayComments user={user} comments={comments} fetchComments={fetchComments} />
            {canManagePost && (
                <PostActions>
                    <EditPost post={post} onPostUpdate={onPostUpdate} />
                    <DeletePost post={post} onPostDelete={onPostDelete} />
                </PostActions>
            )}
        </StandardContainer>
    );
}

export default Post;