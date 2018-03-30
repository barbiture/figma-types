import { Document, Component } from "./nodes";

export type Export = FileResponse;

/**
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
