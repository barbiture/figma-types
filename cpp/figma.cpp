//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     Node data = nlohmann::json::parse(jsonString);
//     Color data = nlohmann::json::parse(jsonString);
//     Global data = nlohmann::json::parse(jsonString);
//     User data = nlohmann::json::parse(jsonString);
//     BlendMode data = nlohmann::json::parse(jsonString);
//     Canvas data = nlohmann::json::parse(jsonString);
//     Document data = nlohmann::json::parse(jsonString);
//     Constraint data = nlohmann::json::parse(jsonString);
//     Comment data = nlohmann::json::parse(jsonString);

#ifndef __QUICKTYPE_NODE_COLOR_GLOBAL_USER_BLENDMODE_CANVAS_DOCUMENT_CONSTRAINT_COMMENT_HPP__
#define __QUICKTYPE_NODE_COLOR_GLOBAL_USER_BLENDMODE_CANVAS_DOCUMENT_CONSTRAINT_COMMENT_HPP__

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    /**
     * An RGBA color
     *
     * Background color of the canvas
     */
    struct NodeColor {
        /**
         * Red channel value, between 0 and 1
         */
        double r;
        /**
         * Green channel value, between 0 and 1
         */
        double g;
        /**
         * Blue channel value, between 0 and 1
         */
        double b;
        /**
         * Alpha channel value, between 0 and 1
         */
        double a;
    };

    /**
     * The type of the node
     */
    enum class NodeType { BOOLEAN, CANVAS, COMPONENT, DOCUMENT, ELLIPSE, FRAME, GROUP, INSTANCE, LINE, RECTANGLE, REGULAR_POLYGON, SLICE, STAR, TEXT, VECTOR };

    /**
     * An array of canvases attached to the document
     *
     * Properties are shared across all nodes
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * Whether or not the node is visible on the canvas
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     *
     * An array of top level layers on the canvas
     */
    struct NodeNode {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         */
        std::unique_ptr<std::vector<struct NodeNode>> children;
        /**
         * Background color of the canvas
         */
        std::unique_ptr<struct NodeColor> background_color;
    };

    /**
     * An array of canvases attached to the document
     *
     * Properties are shared across all nodes
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * Whether or not the node is visible on the canvas
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct Node {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         */
        std::unique_ptr<std::vector<struct NodeNode>> children;
        /**
         * Background color of the canvas
         */
        std::unique_ptr<struct NodeColor> background_color;
    };

    /**
     * An RGBA color
     */
    struct Color {
        /**
         * Red channel value, between 0 and 1
         */
        double r;
        /**
         * Green channel value, between 0 and 1
         */
        double g;
        /**
         * Blue channel value, between 0 and 1
         */
        double b;
        /**
         * Alpha channel value, between 0 and 1
         */
        double a;
    };

    /**
     * Properties are shared across all nodes
     */
    struct Global {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
    };

    /**
     * A description of a user
     */
    struct User {
        std::string handle;
        std::string img_url;
    };

    /**
     * Enum describing how layer blends with layers below
     */
    enum class BlendMode { COLOR, COLOR_BURN, COLOR_DODGE, DARKEN, DIFFERENCE, EXCLUSION, HARD_LIGHT, HUE, LIGHTEN, LINEAR_BURN, LINEAR_DODGE, LUMINOSITY, MULTIPLY, NORMAL, OVERLAY, PASS_THROUGH, SATURATION, SCREEN, SOFT_LIGHT };

    /**
     * An array of top level layers on the canvas
     *
     * An array of canvases attached to the document
     *
     * Properties are shared across all nodes
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * Whether or not the node is visible on the canvas
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct PurpleNode {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         */
        std::unique_ptr<std::vector<struct NodeNode>> children;
        /**
         * Background color of the canvas
         */
        std::unique_ptr<struct NodeColor> background_color;
    };

    /**
     * An array of canvases attached to the document
     *
     * Properties are shared across all nodes
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * Whether or not the node is visible on the canvas
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct Canvas {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of top level layers on the canvas
         */
        std::unique_ptr<std::vector<struct PurpleNode>> children;
        /**
         * Background color of the canvas
         */
        std::unique_ptr<struct NodeColor> background_color;
    };

    /**
     * An array of canvases attached to the document
     *
     * Properties are shared across all nodes
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * Whether or not the node is visible on the canvas
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct FluffyNode {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         *
         * An array of top level layers on the canvas
         */
        std::unique_ptr<std::vector<struct NodeNode>> children;
        /**
         * Background color of the canvas
         */
        std::unique_ptr<struct NodeColor> background_color;
    };

    /**
     * An array of canvases attached to the document
     *
     * Properties are shared across all nodes
     *
     * Red channel value, between 0 and 1
     *
     * Green channel value, between 0 and 1
     *
     * Blue channel value, between 0 and 1
     *
     * Alpha channel value, between 0 and 1
     *
     * See type property for effect of this field
     *
     * Whether or not the node is visible on the canvas
     *
     * A string uniquely identifying this node within the document
     *
     * The name given to the node by the user in the tool
     *
     * Unique identifier for comment
     *
     * The file in which the comment lives
     *
     * If present, the id of the comment to which this is the reply
     */
    struct Document {
        /**
         * A string uniquely identifying this node within the document
         */
        std::string id;
        /**
         * The name given to the node by the user in the tool
         */
        std::string name;
        /**
         * Whether or not the node is visible on the canvas
         */
        std::unique_ptr<bool> visible;
        /**
         * The type of the node
         */
        std::unique_ptr<NodeType> type;
        /**
         * An array of canvases attached to the document
         */
        std::unique_ptr<std::vector<struct FluffyNode>> children;
    };

    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    enum class ConstraintType { HEIGHT, SCALE, WIDTH };

    /**
     * Sizing constraint for exports
     */
    struct Constraint {
        /**
         * Type of constraint to apply; string enum with potential values below
         *
         * * "SCALE": Scale by value
         * * "WIDTH": Scale proportionally and set width to value
         * * "HEIGHT": Scale proportionally and set height to value
         */
        ConstraintType type;
        /**
         * See type property for effect of this field
         */
        std::unique_ptr<double> value;
    };

    /**
     * A description of a user
     *
     * The user who left the comment
     */
    struct CommentUser {
        std::string handle;
        std::string img_url;
    };

    /**
     * A comment or reply left by a user
     */
    struct Comment {
        /**
         * Unique identifier for comment
         */
        std::string id;
        /**
         * The file in which the comment lives
         */
        std::string file_key;
        /**
         * If present, the id of the comment to which this is the reply
         */
        std::unique_ptr<std::string> parent_id;
        /**
         * The user who left the comment
         */
        struct CommentUser user;
    };
    
    inline json get_untyped(const json &j, const char *property) {
        if (j.find(property) != j.end()) {
            return j.at(property).get<json>();
        }
        return json();
    }
    
    template <typename T>
    inline std::unique_ptr<T> get_optional(const json &j, const char *property) {
        if (j.find(property) != j.end())
            return j.at(property).get<std::unique_ptr<T>>();
        return std::unique_ptr<T>();
    }
}

namespace nlohmann {
    template <typename T>
    struct adl_serializer<std::unique_ptr<T>> {
        static void to_json(json& j, const std::unique_ptr<T>& opt) {
            if (!opt)
                j = nullptr;
            else
                j = *opt;
        }

        static std::unique_ptr<T> from_json(const json& j) {
            if (j.is_null())
                return std::unique_ptr<T>();
            else
                return std::unique_ptr<T>(new T(j.get<T>()));
        }
    };

    inline void from_json(const json& _j, struct quicktype::NodeColor& _x) {
        _x.r = _j.at("r").get<double>();
        _x.g = _j.at("g").get<double>();
        _x.b = _j.at("b").get<double>();
        _x.a = _j.at("a").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::NodeColor& _x) {
        _j = json::object();
        _j["r"] = _x.r;
        _j["g"] = _x.g;
        _j["b"] = _x.b;
        _j["a"] = _x.a;
    }

    inline void from_json(const json& _j, struct quicktype::NodeNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::NodeColor>(_j, "backgroundColor");
    }

    inline void to_json(json& _j, const struct quicktype::NodeNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
    }

    inline void from_json(const json& _j, struct quicktype::Node& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::NodeColor>(_j, "backgroundColor");
    }

    inline void to_json(json& _j, const struct quicktype::Node& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
    }

    inline void from_json(const json& _j, struct quicktype::Color& _x) {
        _x.r = _j.at("r").get<double>();
        _x.g = _j.at("g").get<double>();
        _x.b = _j.at("b").get<double>();
        _x.a = _j.at("a").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::Color& _x) {
        _j = json::object();
        _j["r"] = _x.r;
        _j["g"] = _x.g;
        _j["b"] = _x.b;
        _j["a"] = _x.a;
    }

    inline void from_json(const json& _j, struct quicktype::Global& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
    }

    inline void to_json(json& _j, const struct quicktype::Global& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
    }

    inline void from_json(const json& _j, struct quicktype::User& _x) {
        _x.handle = _j.at("handle").get<std::string>();
        _x.img_url = _j.at("img_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::User& _x) {
        _j = json::object();
        _j["handle"] = _x.handle;
        _j["img_url"] = _x.img_url;
    }

    inline void from_json(const json& _j, struct quicktype::PurpleNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::NodeColor>(_j, "backgroundColor");
    }

    inline void to_json(json& _j, const struct quicktype::PurpleNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
    }

    inline void from_json(const json& _j, struct quicktype::Canvas& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::PurpleNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::NodeColor>(_j, "backgroundColor");
    }

    inline void to_json(json& _j, const struct quicktype::Canvas& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
    }

    inline void from_json(const json& _j, struct quicktype::FluffyNode& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::NodeNode>>(_j, "children");
        _x.background_color = quicktype::get_optional<struct quicktype::NodeColor>(_j, "backgroundColor");
    }

    inline void to_json(json& _j, const struct quicktype::FluffyNode& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
        _j["backgroundColor"] = _x.background_color;
    }

    inline void from_json(const json& _j, struct quicktype::Document& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.name = _j.at("name").get<std::string>();
        _x.visible = quicktype::get_optional<bool>(_j, "visible");
        _x.type = quicktype::get_optional<quicktype::NodeType>(_j, "type");
        _x.children = quicktype::get_optional<std::vector<struct quicktype::FluffyNode>>(_j, "children");
    }

    inline void to_json(json& _j, const struct quicktype::Document& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["name"] = _x.name;
        _j["visible"] = _x.visible;
        _j["type"] = _x.type;
        _j["children"] = _x.children;
    }

    inline void from_json(const json& _j, struct quicktype::Constraint& _x) {
        _x.type = _j.at("type").get<quicktype::ConstraintType>();
        _x.value = quicktype::get_optional<double>(_j, "value");
    }

    inline void to_json(json& _j, const struct quicktype::Constraint& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["value"] = _x.value;
    }

    inline void from_json(const json& _j, struct quicktype::CommentUser& _x) {
        _x.handle = _j.at("handle").get<std::string>();
        _x.img_url = _j.at("img_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::CommentUser& _x) {
        _j = json::object();
        _j["handle"] = _x.handle;
        _j["img_url"] = _x.img_url;
    }

    inline void from_json(const json& _j, struct quicktype::Comment& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.file_key = _j.at("file_key").get<std::string>();
        _x.parent_id = quicktype::get_optional<std::string>(_j, "parent_id");
        _x.user = _j.at("user").get<struct quicktype::CommentUser>();
    }

    inline void to_json(json& _j, const struct quicktype::Comment& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["file_key"] = _x.file_key;
        _j["parent_id"] = _x.parent_id;
        _j["user"] = _x.user;
    }

    inline void from_json(const json& _j, quicktype::NodeType& _x) {
        if (_j == "BOOLEAN") _x = quicktype::NodeType::BOOLEAN;
        else if (_j == "CANVAS") _x = quicktype::NodeType::CANVAS;
        else if (_j == "COMPONENT") _x = quicktype::NodeType::COMPONENT;
        else if (_j == "DOCUMENT") _x = quicktype::NodeType::DOCUMENT;
        else if (_j == "ELLIPSE") _x = quicktype::NodeType::ELLIPSE;
        else if (_j == "FRAME") _x = quicktype::NodeType::FRAME;
        else if (_j == "GROUP") _x = quicktype::NodeType::GROUP;
        else if (_j == "INSTANCE") _x = quicktype::NodeType::INSTANCE;
        else if (_j == "LINE") _x = quicktype::NodeType::LINE;
        else if (_j == "RECTANGLE") _x = quicktype::NodeType::RECTANGLE;
        else if (_j == "REGULAR_POLYGON") _x = quicktype::NodeType::REGULAR_POLYGON;
        else if (_j == "SLICE") _x = quicktype::NodeType::SLICE;
        else if (_j == "STAR") _x = quicktype::NodeType::STAR;
        else if (_j == "TEXT") _x = quicktype::NodeType::TEXT;
        else if (_j == "VECTOR") _x = quicktype::NodeType::VECTOR;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::NodeType& _x) {
        switch (_x) {
            case quicktype::NodeType::BOOLEAN: _j = "BOOLEAN"; break;
            case quicktype::NodeType::CANVAS: _j = "CANVAS"; break;
            case quicktype::NodeType::COMPONENT: _j = "COMPONENT"; break;
            case quicktype::NodeType::DOCUMENT: _j = "DOCUMENT"; break;
            case quicktype::NodeType::ELLIPSE: _j = "ELLIPSE"; break;
            case quicktype::NodeType::FRAME: _j = "FRAME"; break;
            case quicktype::NodeType::GROUP: _j = "GROUP"; break;
            case quicktype::NodeType::INSTANCE: _j = "INSTANCE"; break;
            case quicktype::NodeType::LINE: _j = "LINE"; break;
            case quicktype::NodeType::RECTANGLE: _j = "RECTANGLE"; break;
            case quicktype::NodeType::REGULAR_POLYGON: _j = "REGULAR_POLYGON"; break;
            case quicktype::NodeType::SLICE: _j = "SLICE"; break;
            case quicktype::NodeType::STAR: _j = "STAR"; break;
            case quicktype::NodeType::TEXT: _j = "TEXT"; break;
            case quicktype::NodeType::VECTOR: _j = "VECTOR"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::BlendMode& _x) {
        if (_j == "COLOR") _x = quicktype::BlendMode::COLOR;
        else if (_j == "COLOR_BURN") _x = quicktype::BlendMode::COLOR_BURN;
        else if (_j == "COLOR_DODGE") _x = quicktype::BlendMode::COLOR_DODGE;
        else if (_j == "DARKEN") _x = quicktype::BlendMode::DARKEN;
        else if (_j == "DIFFERENCE") _x = quicktype::BlendMode::DIFFERENCE;
        else if (_j == "EXCLUSION") _x = quicktype::BlendMode::EXCLUSION;
        else if (_j == "HARD_LIGHT") _x = quicktype::BlendMode::HARD_LIGHT;
        else if (_j == "HUE") _x = quicktype::BlendMode::HUE;
        else if (_j == "LIGHTEN") _x = quicktype::BlendMode::LIGHTEN;
        else if (_j == "LINEAR_BURN") _x = quicktype::BlendMode::LINEAR_BURN;
        else if (_j == "LINEAR_DODGE") _x = quicktype::BlendMode::LINEAR_DODGE;
        else if (_j == "LUMINOSITY") _x = quicktype::BlendMode::LUMINOSITY;
        else if (_j == "MULTIPLY") _x = quicktype::BlendMode::MULTIPLY;
        else if (_j == "NORMAL") _x = quicktype::BlendMode::NORMAL;
        else if (_j == "OVERLAY") _x = quicktype::BlendMode::OVERLAY;
        else if (_j == "PASS_THROUGH") _x = quicktype::BlendMode::PASS_THROUGH;
        else if (_j == "SATURATION") _x = quicktype::BlendMode::SATURATION;
        else if (_j == "SCREEN") _x = quicktype::BlendMode::SCREEN;
        else if (_j == "SOFT_LIGHT") _x = quicktype::BlendMode::SOFT_LIGHT;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::BlendMode& _x) {
        switch (_x) {
            case quicktype::BlendMode::COLOR: _j = "COLOR"; break;
            case quicktype::BlendMode::COLOR_BURN: _j = "COLOR_BURN"; break;
            case quicktype::BlendMode::COLOR_DODGE: _j = "COLOR_DODGE"; break;
            case quicktype::BlendMode::DARKEN: _j = "DARKEN"; break;
            case quicktype::BlendMode::DIFFERENCE: _j = "DIFFERENCE"; break;
            case quicktype::BlendMode::EXCLUSION: _j = "EXCLUSION"; break;
            case quicktype::BlendMode::HARD_LIGHT: _j = "HARD_LIGHT"; break;
            case quicktype::BlendMode::HUE: _j = "HUE"; break;
            case quicktype::BlendMode::LIGHTEN: _j = "LIGHTEN"; break;
            case quicktype::BlendMode::LINEAR_BURN: _j = "LINEAR_BURN"; break;
            case quicktype::BlendMode::LINEAR_DODGE: _j = "LINEAR_DODGE"; break;
            case quicktype::BlendMode::LUMINOSITY: _j = "LUMINOSITY"; break;
            case quicktype::BlendMode::MULTIPLY: _j = "MULTIPLY"; break;
            case quicktype::BlendMode::NORMAL: _j = "NORMAL"; break;
            case quicktype::BlendMode::OVERLAY: _j = "OVERLAY"; break;
            case quicktype::BlendMode::PASS_THROUGH: _j = "PASS_THROUGH"; break;
            case quicktype::BlendMode::SATURATION: _j = "SATURATION"; break;
            case quicktype::BlendMode::SCREEN: _j = "SCREEN"; break;
            case quicktype::BlendMode::SOFT_LIGHT: _j = "SOFT_LIGHT"; break;
            default: throw "This should not happen";
        }
    }

    inline void from_json(const json& _j, quicktype::ConstraintType& _x) {
        if (_j == "HEIGHT") _x = quicktype::ConstraintType::HEIGHT;
        else if (_j == "SCALE") _x = quicktype::ConstraintType::SCALE;
        else if (_j == "WIDTH") _x = quicktype::ConstraintType::WIDTH;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::ConstraintType& _x) {
        switch (_x) {
            case quicktype::ConstraintType::HEIGHT: _j = "HEIGHT"; break;
            case quicktype::ConstraintType::SCALE: _j = "SCALE"; break;
            case quicktype::ConstraintType::WIDTH: _j = "WIDTH"; break;
            default: throw "This should not happen";
        }
    }
}

#endif
