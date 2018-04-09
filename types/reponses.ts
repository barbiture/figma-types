import { Document, Component } from "./nodes";
import { Comment, FrameOffset, Vector2 } from "./types";

/**
 * #TopLevel
 * GET /v1/files/:key
 *
 * > Description
 *
 * Returns the document refered to by :key as a JSON object. The file key can be parsed from
 * any Figma file url: https://www.figma.com/file/:key/:title. The "document" attribute
 * contains a Node of type DOCUMENT.
 *
 * The "components" key contains a mapping from node IDs to component metadata. This is to
 * help you determine which components each instance comes from. Currently the only piece of
 * metadata available on components is the name of the component, but more properties will
 * be forthcoming.
 *
 * > Path parameters
 *
 * key String
 * File to export JSON from
 */
export interface FileResponse {
  /**
   * The root node within the document
   */
  document: Document;
  /**
   * A mapping from node IDs to component metadata. This is to help you determine which
   * components each instance comes from. Currently the only piece of metadata available on
   * components is the name of the component, but more properties will be forthcoming.
   */
  components: { [key: string]: Component };

  schemaVersion: number;
}

/**
 * #TopLevel
 * GET /v1/files/:key/comments
 *
 * > Description
 * A list of comments left on the file.
 *
 * > Path parameters
 * key String
 * File to get comments from
 */
export interface CommentsResponse {
  comments: Comment[];
}

/**
 * #TopLevel
 * POST /v1/files/:key/comments
 *
 * > Description
 * Posts a new comment on the file.
 *
 * > Path parameters
 * key String
 * File to get comments from
 *
 * > Body parameters
 * message String
 * The text contents of the comment to post
 *
 * client_meta Vector2 | FrameOffset
 * The position of where to place the comment. This can either be an absolute canvas position or the relative position within a frame.
 *
 * > Return value
 * The Comment that was successfully posted
 *
 * > Error codes
 * 404 The specified file was not found
 */
export interface CommentRequest {
  message: string;
  client_meta: Vector2 | FrameOffset;
}

/**
 * #TopLevel
 * GET /v1/teams/:team_id/projects
 *
 * > Description
 * Lists the projects for a specified team. Note that this will only return projects visible to the authenticated user or owner of the developer token.
 *
 * > Path parameters
 * team_id String
 * Id of the team to list projects from
 */
export interface ProjectsResponse {
  projects: { id: number; name: string }[];
}

/**
 * #TopLevel
 * GET /v1/projects/:project_id/files
 *
 * > Description
 * List the files in a given project.
 *
 * > Path parameters
 * project_id String
 * Id of the project to list files from
 */
export interface ProjectFilesResponse {
  files: {
    key: string;
    name: string;
    thumbnail_url: string;

    /** utc date in iso8601 */
    last_modified: string;
  }[];
}
