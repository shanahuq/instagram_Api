
class InstagramPostModels {
    String? id;
    int? pk;
    String? code;
    int? mediaType;
    int? takenAt;
    ImageVersions2? imageVersions2;
    int? originalWidth;
    int? originalHeight;
    List<VideoVersions>? videoVersions;
    bool? hasAudio;
    double? videoDuration;
    String? title;
    Caption? caption;
    User? user;
    String? productType;
    int? commentCount;
    int? likeCount;
    int? viewCount;
    String? videoDashManifest;
    VideoManifest? videoManifest;
    String? strongId;
    FbUserTags? fbUserTags;
    SharingFrictionInfo? sharingFrictionInfo;
    int? deviceTimestamp;
    String? clientCacheKey;
    bool? captionIsEdited;
    String? integrityReviewDecision;
    bool? isVisualReplyCommenterNoticeEnabled;
    bool? isOrganicProductTaggingEligible;
    bool? canViewerReshare;
    CommentInformTreatment? commentInformTreatment;
    FundraiserTag? fundraiserTag;
    bool? canViewerSave;
    bool? isCommentsGifComposerEnabled;
    MusicMetadata? musicMetadata;
    String? organicTrackingToken;
    bool? commentLikesEnabled;
    String? commerceIntegrityReviewDecision;
    int? reshareCount;
    String? videoCodec;
    int? numberOfQualities;

    InstagramPostModels({this.id, this.pk, this.code, this.mediaType, this.takenAt, this.imageVersions2, this.originalWidth, this.originalHeight, this.videoVersions, this.hasAudio, this.videoDuration, this.title, this.caption, this.user, this.productType, this.commentCount, this.likeCount, this.viewCount, this.videoDashManifest, this.videoManifest, this.strongId, this.fbUserTags, this.sharingFrictionInfo, this.deviceTimestamp, this.clientCacheKey, this.captionIsEdited, this.integrityReviewDecision, this.isVisualReplyCommenterNoticeEnabled, this.isOrganicProductTaggingEligible, this.canViewerReshare, this.commentInformTreatment, this.fundraiserTag, this.canViewerSave, this.isCommentsGifComposerEnabled, this.musicMetadata, this.organicTrackingToken, this.commentLikesEnabled, this.commerceIntegrityReviewDecision, this.reshareCount, this.videoCodec, this.numberOfQualities});

    InstagramPostModels.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        pk = json["pk"];
        code = json["code"];
        mediaType = json["media_type"];
        takenAt = json["taken_at"];
        imageVersions2 = json["image_versions2"] == null ? null : ImageVersions2.fromJson(json["image_versions2"]);
        originalWidth = json["original_width"];
        originalHeight = json["original_height"];
        videoVersions = json["video_versions"] == null ? null : (json["video_versions"] as List).map((e) => VideoVersions.fromJson(e)).toList();
        hasAudio = json["has_audio"];
        videoDuration = json["video_duration"];
        title = json["title"];
        caption = json["caption"] == null ? null : Caption.fromJson(json["caption"]);
        user = json["user"] == null ? null : User.fromJson(json["user"]);
        productType = json["product_type"];
        commentCount = json["comment_count"];
        likeCount = json["like_count"];
        viewCount = json["view_count"];
        videoDashManifest = json["video_dash_manifest"];
        videoManifest = json["video_manifest"] == null ? null : VideoManifest.fromJson(json["video_manifest"]);
        strongId = json["strong_id__"];
        fbUserTags = json["fb_user_tags"] == null ? null : FbUserTags.fromJson(json["fb_user_tags"]);
        sharingFrictionInfo = json["sharing_friction_info"] == null ? null : SharingFrictionInfo.fromJson(json["sharing_friction_info"]);
        deviceTimestamp = json["device_timestamp"];
        clientCacheKey = json["client_cache_key"];
        captionIsEdited = json["caption_is_edited"];
        integrityReviewDecision = json["integrity_review_decision"];
        isVisualReplyCommenterNoticeEnabled = json["is_visual_reply_commenter_notice_enabled"];
        isOrganicProductTaggingEligible = json["is_organic_product_tagging_eligible"];
        canViewerReshare = json["can_viewer_reshare"];
        commentInformTreatment = json["comment_inform_treatment"] == null ? null : CommentInformTreatment.fromJson(json["comment_inform_treatment"]);
        fundraiserTag = json["fundraiser_tag"] == null ? null : FundraiserTag.fromJson(json["fundraiser_tag"]);
        canViewerSave = json["can_viewer_save"];
        isCommentsGifComposerEnabled = json["is_comments_gif_composer_enabled"];
        musicMetadata = json["music_metadata"] == null ? null : MusicMetadata.fromJson(json["music_metadata"]);
        organicTrackingToken = json["organic_tracking_token"];
        commentLikesEnabled = json["comment_likes_enabled"];
        commerceIntegrityReviewDecision = json["commerce_integrity_review_decision"];
        reshareCount = json["reshare_count"];
        videoCodec = json["video_codec"];
        numberOfQualities = json["number_of_qualities"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["pk"] = pk;
        _data["code"] = code;
        _data["media_type"] = mediaType;
        _data["taken_at"] = takenAt;
        if(imageVersions2 != null) {
            _data["image_versions2"] = imageVersions2?.toJson();
        }
        _data["original_width"] = originalWidth;
        _data["original_height"] = originalHeight;
        if(videoVersions != null) {
            _data["video_versions"] = videoVersions?.map((e) => e.toJson()).toList();
        }
        _data["has_audio"] = hasAudio;
        _data["video_duration"] = videoDuration;
        _data["title"] = title;
        if(caption != null) {
            _data["caption"] = caption?.toJson();
        }
        if(user != null) {
            _data["user"] = user?.toJson();
        }
        _data["product_type"] = productType;
        _data["comment_count"] = commentCount;
        _data["like_count"] = likeCount;
        _data["view_count"] = viewCount;
        _data["video_dash_manifest"] = videoDashManifest;
        if(videoManifest != null) {
            _data["video_manifest"] = videoManifest?.toJson();
        }
        _data["strong_id__"] = strongId;
        if(fbUserTags != null) {
            _data["fb_user_tags"] = fbUserTags?.toJson();
        }
        if(sharingFrictionInfo != null) {
            _data["sharing_friction_info"] = sharingFrictionInfo?.toJson();
        }
        _data["device_timestamp"] = deviceTimestamp;
        _data["client_cache_key"] = clientCacheKey;
        _data["caption_is_edited"] = captionIsEdited;
        _data["integrity_review_decision"] = integrityReviewDecision;
        _data["is_visual_reply_commenter_notice_enabled"] = isVisualReplyCommenterNoticeEnabled;
        _data["is_organic_product_tagging_eligible"] = isOrganicProductTaggingEligible;
        _data["can_viewer_reshare"] = canViewerReshare;
        if(commentInformTreatment != null) {
            _data["comment_inform_treatment"] = commentInformTreatment?.toJson();
        }
        if(fundraiserTag != null) {
            _data["fundraiser_tag"] = fundraiserTag?.toJson();
        }
        _data["can_viewer_save"] = canViewerSave;
        _data["is_comments_gif_composer_enabled"] = isCommentsGifComposerEnabled;
        if(musicMetadata != null) {
            _data["music_metadata"] = musicMetadata?.toJson();
        }
        _data["organic_tracking_token"] = organicTrackingToken;
        _data["comment_likes_enabled"] = commentLikesEnabled;
        _data["commerce_integrity_review_decision"] = commerceIntegrityReviewDecision;
        _data["reshare_count"] = reshareCount;
        _data["video_codec"] = videoCodec;
        _data["number_of_qualities"] = numberOfQualities;
        return _data;
    }
}

class MusicMetadata {
    String? musicCanonicalId;
    dynamic audioType;
    dynamic musicInfo;
    dynamic originalSoundInfo;
    dynamic pinnedMediaIds;

    MusicMetadata({this.musicCanonicalId, this.audioType, this.musicInfo, this.originalSoundInfo, this.pinnedMediaIds});

    MusicMetadata.fromJson(Map<String, dynamic> json) {
        musicCanonicalId = json["music_canonical_id"];
        audioType = json["audio_type"];
        musicInfo = json["music_info"];
        originalSoundInfo = json["original_sound_info"];
        pinnedMediaIds = json["pinned_media_ids"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["music_canonical_id"] = musicCanonicalId;
        _data["audio_type"] = audioType;
        _data["music_info"] = musicInfo;
        _data["original_sound_info"] = originalSoundInfo;
        _data["pinned_media_ids"] = pinnedMediaIds;
        return _data;
    }
}

class FundraiserTag {
    bool? hasStandaloneFundraiser;

    FundraiserTag({this.hasStandaloneFundraiser});

    FundraiserTag.fromJson(Map<String, dynamic> json) {
        hasStandaloneFundraiser = json["has_standalone_fundraiser"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["has_standalone_fundraiser"] = hasStandaloneFundraiser;
        return _data;
    }
}

class CommentInformTreatment {
    bool? shouldHaveInformTreatment;
    String? text;
    dynamic url;
    dynamic actionType;

    CommentInformTreatment({this.shouldHaveInformTreatment, this.text, this.url, this.actionType});

    CommentInformTreatment.fromJson(Map<String, dynamic> json) {
        shouldHaveInformTreatment = json["should_have_inform_treatment"];
        text = json["text"];
        url = json["url"];
        actionType = json["action_type"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["should_have_inform_treatment"] = shouldHaveInformTreatment;
        _data["text"] = text;
        _data["url"] = url;
        _data["action_type"] = actionType;
        return _data;
    }
}

class SharingFrictionInfo {
    bool? shouldHaveSharingFriction;
    dynamic bloksAppUrl;
    dynamic sharingFrictionPayload;

    SharingFrictionInfo({this.shouldHaveSharingFriction, this.bloksAppUrl, this.sharingFrictionPayload});

    SharingFrictionInfo.fromJson(Map<String, dynamic> json) {
        shouldHaveSharingFriction = json["should_have_sharing_friction"];
        bloksAppUrl = json["bloks_app_url"];
        sharingFrictionPayload = json["sharing_friction_payload"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["should_have_sharing_friction"] = shouldHaveSharingFriction;
        _data["bloks_app_url"] = bloksAppUrl;
        _data["sharing_friction_payload"] = sharingFrictionPayload;
        return _data;
    }
}

class FbUserTags {
    List<dynamic>? int;

    FbUserTags({this.int});

    FbUserTags.fromJson(Map<String, dynamic> json) {
        int = json["in"] ?? [];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(int != null) {
            _data["in"] = int;
        }
        return _data;
    }
}

class VideoManifest {
    dynamic audio;
    dynamic video;

    VideoManifest({this.audio, this.video});

    VideoManifest.fromJson(Map<String, dynamic> json) {
        audio = json["audio"];
        video = json["video"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["audio"] = audio;
        _data["video"] = video;
        return _data;
    }
}

class User {
    int? pk;
    String? username;
    String? fullName;
    bool? isPrivate;
    String? profilePicUrl;
    String? profilePicId;
    bool? isVerified;
    int? accountType;
    FanClubInfo? fanClubInfo;
    int? fbidV2;
    String? pkId;
    int? thirdPartyDownloadsEnabled;
    String? strongId;
    int? latestReelMedia;
    AvatarStatus? avatarStatus;
    bool? showAccountTransparencyDetails;

    User({this.pk, this.username, this.fullName, this.isPrivate, this.profilePicUrl, this.profilePicId, this.isVerified, this.accountType, this.fanClubInfo, this.fbidV2, this.pkId, this.thirdPartyDownloadsEnabled, this.strongId, this.latestReelMedia, this.avatarStatus, this.showAccountTransparencyDetails});

    User.fromJson(Map<String, dynamic> json) {
        pk = json["pk"];
        username = json["username"];
        fullName = json["full_name"];
        isPrivate = json["is_private"];
        profilePicUrl = json["profile_pic_url"];
        profilePicId = json["profile_pic_id"];
        isVerified = json["is_verified"];
        accountType = json["account_type"];
        fanClubInfo = json["fan_club_info"] == null ? null : FanClubInfo.fromJson(json["fan_club_info"]);
        fbidV2 = json["fbid_v2"];
        pkId = json["pk_id"];
        thirdPartyDownloadsEnabled = json["third_party_downloads_enabled"];
        strongId = json["strong_id__"];
        latestReelMedia = json["latest_reel_media"];
        avatarStatus = json["avatar_status"] == null ? null : AvatarStatus.fromJson(json["avatar_status"]);
        showAccountTransparencyDetails = json["show_account_transparency_details"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["pk"] = pk;
        _data["username"] = username;
        _data["full_name"] = fullName;
        _data["is_private"] = isPrivate;
        _data["profile_pic_url"] = profilePicUrl;
        _data["profile_pic_id"] = profilePicId;
        _data["is_verified"] = isVerified;
        _data["account_type"] = accountType;
        if(fanClubInfo != null) {
            _data["fan_club_info"] = fanClubInfo?.toJson();
        }
        _data["fbid_v2"] = fbidV2;
        _data["pk_id"] = pkId;
        _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
        _data["strong_id__"] = strongId;
        _data["latest_reel_media"] = latestReelMedia;
        if(avatarStatus != null) {
            _data["avatar_status"] = avatarStatus?.toJson();
        }
        _data["show_account_transparency_details"] = showAccountTransparencyDetails;
        return _data;
    }
}

class AvatarStatus {
    bool? hasAvatar;

    AvatarStatus({this.hasAvatar});

    AvatarStatus.fromJson(Map<String, dynamic> json) {
        hasAvatar = json["has_avatar"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["has_avatar"] = hasAvatar;
        return _data;
    }
}

class FanClubInfo {
    FanClubInfo();

    FanClubInfo.fromJson(Map<String, dynamic> json) {

    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};

        return _data;
    }
}

class Caption {
    String? text;
    String? pk;
    int? userId;
    int? type;
    bool? didReportAsSpam;
    int? createdAt;
    int? createdAtUtc;
    String? contentType;
    String? status;
    int? bitFlags;
    bool? shareEnabled;
    bool? isRankedComment;
    bool? isCovered;
    int? privateReplyStatus;
    int? mediaId;

    Caption({this.text, this.pk, this.userId, this.type, this.didReportAsSpam, this.createdAt, this.createdAtUtc, this.contentType, this.status, this.bitFlags, this.shareEnabled, this.isRankedComment, this.isCovered, this.privateReplyStatus, this.mediaId});

    Caption.fromJson(Map<String, dynamic> json) {
        text = json["text"];
        pk = json["pk"];
        userId = json["user_id"];
        type = json["type"];
        didReportAsSpam = json["did_report_as_spam"];
        createdAt = json["created_at"];
        createdAtUtc = json["created_at_utc"];
        contentType = json["content_type"];
        status = json["status"];
        bitFlags = json["bit_flags"];
        shareEnabled = json["share_enabled"];
        isRankedComment = json["is_ranked_comment"];
        isCovered = json["is_covered"];
        privateReplyStatus = json["private_reply_status"];
        mediaId = json["media_id"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["text"] = text;
        _data["pk"] = pk;
        _data["user_id"] = userId;
        _data["type"] = type;
        _data["did_report_as_spam"] = didReportAsSpam;
        _data["created_at"] = createdAt;
        _data["created_at_utc"] = createdAtUtc;
        _data["content_type"] = contentType;
        _data["status"] = status;
        _data["bit_flags"] = bitFlags;
        _data["share_enabled"] = shareEnabled;
        _data["is_ranked_comment"] = isRankedComment;
        _data["is_covered"] = isCovered;
        _data["private_reply_status"] = privateReplyStatus;
        _data["media_id"] = mediaId;
        return _data;
    }
}

class VideoVersions {
    int? width;
    int? height;
    String? url;
    int? bandwidth;
    String? id;
    int? type;

    VideoVersions({this.width, this.height, this.url, this.bandwidth, this.id, this.type});

    VideoVersions.fromJson(Map<String, dynamic> json) {
        width = json["width"];
        height = json["height"];
        url = json["url"];
        bandwidth = json["bandwidth"];
        id = json["id"];
        type = json["type"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["width"] = width;
        _data["height"] = height;
        _data["url"] = url;
        _data["bandwidth"] = bandwidth;
        _data["id"] = id;
        _data["type"] = type;
        return _data;
    }
}

class ImageVersions2 {
    List<Candidates>? candidates;
    AdditionalCandidates? additionalCandidates;

    ImageVersions2({this.candidates, this.additionalCandidates});

    ImageVersions2.fromJson(Map<String, dynamic> json) {
        candidates = json["candidates"] == null ? null : (json["candidates"] as List).map((e) => Candidates.fromJson(e)).toList();
        additionalCandidates = json["additional_candidates"] == null ? null : AdditionalCandidates.fromJson(json["additional_candidates"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(candidates != null) {
            _data["candidates"] = candidates?.map((e) => e.toJson()).toList();
        }
        if(additionalCandidates != null) {
            _data["additional_candidates"] = additionalCandidates?.toJson();
        }
        return _data;
    }
}

class AdditionalCandidates {
    IgtvFirstFrame? igtvFirstFrame;
    dynamic smartFrame;
    FirstFrame? firstFrame;

    AdditionalCandidates({this.igtvFirstFrame, this.smartFrame, this.firstFrame});

    AdditionalCandidates.fromJson(Map<String, dynamic> json) {
        igtvFirstFrame = json["igtv_first_frame"] == null ? null : IgtvFirstFrame.fromJson(json["igtv_first_frame"]);
        smartFrame = json["smart_frame"];
        firstFrame = json["first_frame"] == null ? null : FirstFrame.fromJson(json["first_frame"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(igtvFirstFrame != null) {
            _data["igtv_first_frame"] = igtvFirstFrame?.toJson();
        }
        _data["smart_frame"] = smartFrame;
        if(firstFrame != null) {
            _data["first_frame"] = firstFrame?.toJson();
        }
        return _data;
    }
}

class FirstFrame {
    int? width;
    int? height;
    String? url;
    String? scansProfile;
    List<int>? estimatedScansSizes;

    FirstFrame({this.width, this.height, this.url, this.scansProfile, this.estimatedScansSizes});

    FirstFrame.fromJson(Map<String, dynamic> json) {
        width = json["width"];
        height = json["height"];
        url = json["url"];
        scansProfile = json["scans_profile"];
        estimatedScansSizes = json["estimated_scans_sizes"] == null ? null : List<int>.from(json["estimated_scans_sizes"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["width"] = width;
        _data["height"] = height;
        _data["url"] = url;
        _data["scans_profile"] = scansProfile;
        if(estimatedScansSizes != null) {
            _data["estimated_scans_sizes"] = estimatedScansSizes;
        }
        return _data;
    }
}

class IgtvFirstFrame {
    int? width;
    int? height;
    String? url;
    String? scansProfile;
    List<int>? estimatedScansSizes;

    IgtvFirstFrame({this.width, this.height, this.url, this.scansProfile, this.estimatedScansSizes});

    IgtvFirstFrame.fromJson(Map<String, dynamic> json) {
        width = json["width"];
        height = json["height"];
        url = json["url"];
        scansProfile = json["scans_profile"];
        estimatedScansSizes = json["estimated_scans_sizes"] == null ? null : List<int>.from(json["estimated_scans_sizes"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["width"] = width;
        _data["height"] = height;
        _data["url"] = url;
        _data["scans_profile"] = scansProfile;
        if(estimatedScansSizes != null) {
            _data["estimated_scans_sizes"] = estimatedScansSizes;
        }
        return _data;
    }
}

class Candidates {
    int? width;
    int? height;
    String? url;
    String? scansProfile;
    List<int>? estimatedScansSizes;

    Candidates({this.width, this.height, this.url, this.scansProfile, this.estimatedScansSizes});

    Candidates.fromJson(Map<String, dynamic> json) {
        width = json["width"];
        height = json["height"];
        url = json["url"];
        scansProfile = json["scans_profile"];
        estimatedScansSizes = json["estimated_scans_sizes"] == null ? null : List<int>.from(json["estimated_scans_sizes"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["width"] = width;
        _data["height"] = height;
        _data["url"] = url;
        _data["scans_profile"] = scansProfile;
        if(estimatedScansSizes != null) {
            _data["estimated_scans_sizes"] = estimatedScansSizes;
        }
        return _data;
    }
}