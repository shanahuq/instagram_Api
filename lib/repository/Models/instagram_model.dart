
class InstagramProfileModel {
    int? pk;
    String? username;
    String? fullName;
    bool? isPrivate;
    String? profilePicUrl;
    String? profilePicId;
    bool? isVerified;
    int? mediaCount;
    int? followerCount;
    int? followingCount;
    int? totalClipsCount;
    bool? hasHighlightReels;
    String? biography;
    String? externalUrl;
    HdProfilePicUrlInfo? hdProfilePicUrlInfo;
    int? accountType;
    bool? isBusiness;
    FanClubInfo? fanClubInfo;
    bool? canHideCategory;
    int? fbidV2;
    String? pkId;
    int? textPostAppJoinerNumber;
    int? thirdPartyDownloadsEnabled;
    bool? spamFollowerSettingEnabled;
    bool? showTextPostAppBadge;
    bool? showTextPostAppSwitcherBadge;
    String? textPostAppJoinerNumberLabel;
    String? strongId;
    BiographyWithEntities? biographyWithEntities;
    String? externalLynxUrl;
    bool? canHidePublicContacts;
    bool? shouldShowCategory;
    String? categoryId;
    bool? shouldShowPublicContacts;
    bool? isEligibleForSmbSupportFlow;
    bool? isEligibleForLeadCenter;
    String? leadDetailsAppId;
    String? professionalConversionSuggestedAccountType;
    String? directMessaging;
    String? addressStreet;
    String? businessContactMethod;
    String? cityId;
    String? cityName;
    double? latitude;
    double? longitude;
    String? zip;
    String? pageName;
    List<BioLinks>? bioLinks;
    ActiveStandaloneFundraisers? activeStandaloneFundraisers;
    CharityProfileFundraiserInfo? charityProfileFundraiserInfo;
    List<HdProfilePicVersions>? hdProfilePicVersions;
    String? liveSubscriptionStatus;
    PinnedChannelsInfo? pinnedChannelsInfo;
    bool? autoExpandChaining;
    AvatarStatus? avatarStatus;
    BroadcastChatPreferenceStatus? broadcastChatPreferenceStatus;
    bool? existingUserAgeCollectionEnabled;
    bool? hasPrivateCollections;
    bool? hasPublicTabThreads;
    bool? hasVideos;
    bool? includeDirectBlacklistStatus;
    String? interopMessagingUserFbid;
    bool? isDirectRollCallEnabled;
    bool? isInterestAccount;
    bool? isProfileBroadcastSharingEnabled;
    bool? isProfilePictureExpansionEnabled;
    bool? isPromotionsInProfileEnabled;
    bool? isRemixSettingEnabledForPosts;
    bool? isRemixSettingEnabledForReels;
    Nametag? nametag;
    bool? openExternalUrlWithInAppBrowser;
    RecsFromFriends? recsFromFriends;
    bool? showAccountTransparencyDetails;
    bool? showPostInsightsEntryPoint;
    String? textPostAppBadgeLabel;

    InstagramProfileModel({this.pk, this.username, this.fullName, this.isPrivate, this.profilePicUrl, this.profilePicId, this.isVerified, this.mediaCount, this.followerCount, this.followingCount, this.totalClipsCount, this.hasHighlightReels, this.biography, this.externalUrl, this.hdProfilePicUrlInfo, this.accountType, this.isBusiness, this.fanClubInfo, this.canHideCategory, this.fbidV2, this.pkId, this.textPostAppJoinerNumber, this.thirdPartyDownloadsEnabled, this.spamFollowerSettingEnabled, this.showTextPostAppBadge, this.showTextPostAppSwitcherBadge, this.textPostAppJoinerNumberLabel, this.strongId, this.biographyWithEntities, this.externalLynxUrl, this.canHidePublicContacts, this.shouldShowCategory, this.categoryId, this.shouldShowPublicContacts, this.isEligibleForSmbSupportFlow, this.isEligibleForLeadCenter, this.leadDetailsAppId, this.professionalConversionSuggestedAccountType, this.directMessaging, this.addressStreet, this.businessContactMethod, this.cityId, this.cityName, this.latitude, this.longitude, this.zip, this.pageName, this.bioLinks, this.activeStandaloneFundraisers, this.charityProfileFundraiserInfo, this.hdProfilePicVersions, this.liveSubscriptionStatus, this.pinnedChannelsInfo, this.autoExpandChaining, this.avatarStatus, this.broadcastChatPreferenceStatus, this.existingUserAgeCollectionEnabled, this.hasPrivateCollections, this.hasPublicTabThreads, this.hasVideos, this.includeDirectBlacklistStatus, this.interopMessagingUserFbid, this.isDirectRollCallEnabled, this.isInterestAccount, this.isProfileBroadcastSharingEnabled, this.isProfilePictureExpansionEnabled, this.isPromotionsInProfileEnabled, this.isRemixSettingEnabledForPosts, this.isRemixSettingEnabledForReels, this.nametag, this.openExternalUrlWithInAppBrowser, this.recsFromFriends, this.showAccountTransparencyDetails, this.showPostInsightsEntryPoint, this.textPostAppBadgeLabel});

    InstagramProfileModel.fromJson(Map<String, dynamic> json) {
        pk = json["pk"];
        username = json["username"];
        fullName = json["full_name"];
        isPrivate = json["is_private"];
        profilePicUrl = json["profile_pic_url"];
        profilePicId = json["profile_pic_id"];
        isVerified = json["is_verified"];
        mediaCount = json["media_count"];
        followerCount = json["follower_count"];
        followingCount = json["following_count"];
        totalClipsCount = json["total_clips_count"];
        hasHighlightReels = json["has_highlight_reels"];
        biography = json["biography"];
        externalUrl = json["external_url"];
        hdProfilePicUrlInfo = json["hd_profile_pic_url_info"] == null ? null : HdProfilePicUrlInfo.fromJson(json["hd_profile_pic_url_info"]);
        accountType = json["account_type"];
        isBusiness = json["is_business"];
        fanClubInfo = json["fan_club_info"] == null ? null : FanClubInfo.fromJson(json["fan_club_info"]);
        canHideCategory = json["can_hide_category"];
        fbidV2 = json["fbid_v2"];
        pkId = json["pk_id"];
        textPostAppJoinerNumber = json["text_post_app_joiner_number"];
        thirdPartyDownloadsEnabled = json["third_party_downloads_enabled"];
        spamFollowerSettingEnabled = json["spam_follower_setting_enabled"];
        showTextPostAppBadge = json["show_text_post_app_badge"];
        showTextPostAppSwitcherBadge = json["show_text_post_app_switcher_badge"];
        textPostAppJoinerNumberLabel = json["text_post_app_joiner_number_label"];
        strongId = json["strong_id__"];
        biographyWithEntities = json["biography_with_entities"] == null ? null : BiographyWithEntities.fromJson(json["biography_with_entities"]);
        externalLynxUrl = json["external_lynx_url"];
        canHidePublicContacts = json["can_hide_public_contacts"];
        shouldShowCategory = json["should_show_category"];
        categoryId = json["category_id"];
        shouldShowPublicContacts = json["should_show_public_contacts"];
        isEligibleForSmbSupportFlow = json["is_eligible_for_smb_support_flow"];
        isEligibleForLeadCenter = json["is_eligible_for_lead_center"];
        leadDetailsAppId = json["lead_details_app_id"];
        professionalConversionSuggestedAccountType = json["professional_conversion_suggested_account_type"];
        directMessaging = json["direct_messaging"];
        addressStreet = json["address_street"];
        businessContactMethod = json["business_contact_method"];
        cityId = json["city_id"];
        cityName = json["city_name"];
        latitude = json["latitude"];
        longitude = json["longitude"];
        zip = json["zip"];
        pageName = json["page_name"];
        bioLinks = json["bio_links"] == null ? null : (json["bio_links"] as List).map((e) => BioLinks.fromJson(e)).toList();
        activeStandaloneFundraisers = json["active_standalone_fundraisers"] == null ? null : ActiveStandaloneFundraisers.fromJson(json["active_standalone_fundraisers"]);
        charityProfileFundraiserInfo = json["charity_profile_fundraiser_info"] == null ? null : CharityProfileFundraiserInfo.fromJson(json["charity_profile_fundraiser_info"]);
        hdProfilePicVersions = json["hd_profile_pic_versions"] == null ? null : (json["hd_profile_pic_versions"] as List).map((e) => HdProfilePicVersions.fromJson(e)).toList();
        liveSubscriptionStatus = json["live_subscription_status"];
        pinnedChannelsInfo = json["pinned_channels_info"] == null ? null : PinnedChannelsInfo.fromJson(json["pinned_channels_info"]);
        autoExpandChaining = json["auto_expand_chaining"];
        avatarStatus = json["avatar_status"] == null ? null : AvatarStatus.fromJson(json["avatar_status"]);
        broadcastChatPreferenceStatus = json["broadcast_chat_preference_status"] == null ? null : BroadcastChatPreferenceStatus.fromJson(json["broadcast_chat_preference_status"]);
        existingUserAgeCollectionEnabled = json["existing_user_age_collection_enabled"];
        hasPrivateCollections = json["has_private_collections"];
        hasPublicTabThreads = json["has_public_tab_threads"];
        hasVideos = json["has_videos"];
        includeDirectBlacklistStatus = json["include_direct_blacklist_status"];
        interopMessagingUserFbid = json["interop_messaging_user_fbid"];
        isDirectRollCallEnabled = json["is_direct_roll_call_enabled"];
        isInterestAccount = json["is_interest_account"];
        isProfileBroadcastSharingEnabled = json["is_profile_broadcast_sharing_enabled"];
        isProfilePictureExpansionEnabled = json["is_profile_picture_expansion_enabled"];
        isPromotionsInProfileEnabled = json["is_promotions_in_profile_enabled"];
        isRemixSettingEnabledForPosts = json["is_remix_setting_enabled_for_posts"];
        isRemixSettingEnabledForReels = json["is_remix_setting_enabled_for_reels"];
        nametag = json["nametag"] == null ? null : Nametag.fromJson(json["nametag"]);
        openExternalUrlWithInAppBrowser = json["open_external_url_with_in_app_browser"];
        recsFromFriends = json["recs_from_friends"] == null ? null : RecsFromFriends.fromJson(json["recs_from_friends"]);
        showAccountTransparencyDetails = json["show_account_transparency_details"];
        showPostInsightsEntryPoint = json["show_post_insights_entry_point"];
        textPostAppBadgeLabel = json["text_post_app_badge_label"];
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
        _data["media_count"] = mediaCount;
        _data["follower_count"] = followerCount;
        _data["following_count"] = followingCount;
        _data["total_clips_count"] = totalClipsCount;
        _data["has_highlight_reels"] = hasHighlightReels;
        _data["biography"] = biography;
        _data["external_url"] = externalUrl;
        if(hdProfilePicUrlInfo != null) {
            _data["hd_profile_pic_url_info"] = hdProfilePicUrlInfo?.toJson();
        }
        _data["account_type"] = accountType;
        _data["is_business"] = isBusiness;
        if(fanClubInfo != null) {
            _data["fan_club_info"] = fanClubInfo?.toJson();
        }
        _data["can_hide_category"] = canHideCategory;
        _data["fbid_v2"] = fbidV2;
        _data["pk_id"] = pkId;
        _data["text_post_app_joiner_number"] = textPostAppJoinerNumber;
        _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
        _data["spam_follower_setting_enabled"] = spamFollowerSettingEnabled;
        _data["show_text_post_app_badge"] = showTextPostAppBadge;
        _data["show_text_post_app_switcher_badge"] = showTextPostAppSwitcherBadge;
        _data["text_post_app_joiner_number_label"] = textPostAppJoinerNumberLabel;
        _data["strong_id__"] = strongId;
        if(biographyWithEntities != null) {
            _data["biography_with_entities"] = biographyWithEntities?.toJson();
        }
        _data["external_lynx_url"] = externalLynxUrl;
        _data["can_hide_public_contacts"] = canHidePublicContacts;
        _data["should_show_category"] = shouldShowCategory;
        _data["category_id"] = categoryId;
        _data["should_show_public_contacts"] = shouldShowPublicContacts;
        _data["is_eligible_for_smb_support_flow"] = isEligibleForSmbSupportFlow;
        _data["is_eligible_for_lead_center"] = isEligibleForLeadCenter;
        _data["lead_details_app_id"] = leadDetailsAppId;
        _data["professional_conversion_suggested_account_type"] = professionalConversionSuggestedAccountType;
        _data["direct_messaging"] = directMessaging;
        _data["address_street"] = addressStreet;
        _data["business_contact_method"] = businessContactMethod;
        _data["city_id"] = cityId;
        _data["city_name"] = cityName;
        _data["latitude"] = latitude;
        _data["longitude"] = longitude;
        _data["zip"] = zip;
        _data["page_name"] = pageName;
        if(bioLinks != null) {
            _data["bio_links"] = bioLinks?.map((e) => e.toJson()).toList();
        }
        if(activeStandaloneFundraisers != null) {
            _data["active_standalone_fundraisers"] = activeStandaloneFundraisers?.toJson();
        }
        if(charityProfileFundraiserInfo != null) {
            _data["charity_profile_fundraiser_info"] = charityProfileFundraiserInfo?.toJson();
        }
        if(hdProfilePicVersions != null) {
            _data["hd_profile_pic_versions"] = hdProfilePicVersions?.map((e) => e.toJson()).toList();
        }
        _data["live_subscription_status"] = liveSubscriptionStatus;
        if(pinnedChannelsInfo != null) {
            _data["pinned_channels_info"] = pinnedChannelsInfo?.toJson();
        }
        _data["auto_expand_chaining"] = autoExpandChaining;
        if(avatarStatus != null) {
            _data["avatar_status"] = avatarStatus?.toJson();
        }
        if(broadcastChatPreferenceStatus != null) {
            _data["broadcast_chat_preference_status"] = broadcastChatPreferenceStatus?.toJson();
        }
        _data["existing_user_age_collection_enabled"] = existingUserAgeCollectionEnabled;
        _data["has_private_collections"] = hasPrivateCollections;
        _data["has_public_tab_threads"] = hasPublicTabThreads;
        _data["has_videos"] = hasVideos;
        _data["include_direct_blacklist_status"] = includeDirectBlacklistStatus;
        _data["interop_messaging_user_fbid"] = interopMessagingUserFbid;
        _data["is_direct_roll_call_enabled"] = isDirectRollCallEnabled;
        _data["is_interest_account"] = isInterestAccount;
        _data["is_profile_broadcast_sharing_enabled"] = isProfileBroadcastSharingEnabled;
        _data["is_profile_picture_expansion_enabled"] = isProfilePictureExpansionEnabled;
        _data["is_promotions_in_profile_enabled"] = isPromotionsInProfileEnabled;
        _data["is_remix_setting_enabled_for_posts"] = isRemixSettingEnabledForPosts;
        _data["is_remix_setting_enabled_for_reels"] = isRemixSettingEnabledForReels;
        if(nametag != null) {
            _data["nametag"] = nametag?.toJson();
        }
        _data["open_external_url_with_in_app_browser"] = openExternalUrlWithInAppBrowser;
        if(recsFromFriends != null) {
            _data["recs_from_friends"] = recsFromFriends?.toJson();
        }
        _data["show_account_transparency_details"] = showAccountTransparencyDetails;
        _data["show_post_insights_entry_point"] = showPostInsightsEntryPoint;
        _data["text_post_app_badge_label"] = textPostAppBadgeLabel;
        return _data;
    }
}

class RecsFromFriends {
    String? recsFromFriendsEntryPointType;

    RecsFromFriends({this.recsFromFriendsEntryPointType});

    RecsFromFriends.fromJson(Map<String, dynamic> json) {
        recsFromFriendsEntryPointType = json["recs_from_friends_entry_point_type"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["recs_from_friends_entry_point_type"] = recsFromFriendsEntryPointType;
        return _data;
    }
}

class Nametag {
    List<int>? availableThemeColors;
    String? backgroundImageUrl;
    String? emoji;
    int? emojiColor;
    int? gradient;
    bool? isBackgroundImageBlurred;
    int? mode;
    int? selectedThemeColor;
    int? selfieSticker;
    String? selfieUrl;
    ThemeColor? themeColor;

    Nametag({this.availableThemeColors, this.backgroundImageUrl, this.emoji, this.emojiColor, this.gradient, this.isBackgroundImageBlurred, this.mode, this.selectedThemeColor, this.selfieSticker, this.selfieUrl, this.themeColor});

    Nametag.fromJson(Map<String, dynamic> json) {
        availableThemeColors = json["available_theme_colors"] == null ? null : List<int>.from(json["available_theme_colors"]);
        backgroundImageUrl = json["background_image_url"];
        emoji = json["emoji"];
        emojiColor = json["emoji_color"];
        gradient = json["gradient"];
        isBackgroundImageBlurred = json["is_background_image_blurred"];
        mode = json["mode"];
        selectedThemeColor = json["selected_theme_color"];
        selfieSticker = json["selfie_sticker"];
        selfieUrl = json["selfie_url"];
        themeColor = json["theme_color"] == null ? null : ThemeColor.fromJson(json["theme_color"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(availableThemeColors != null) {
            _data["available_theme_colors"] = availableThemeColors;
        }
        _data["background_image_url"] = backgroundImageUrl;
        _data["emoji"] = emoji;
        _data["emoji_color"] = emojiColor;
        _data["gradient"] = gradient;
        _data["is_background_image_blurred"] = isBackgroundImageBlurred;
        _data["mode"] = mode;
        _data["selected_theme_color"] = selectedThemeColor;
        _data["selfie_sticker"] = selfieSticker;
        _data["selfie_url"] = selfieUrl;
        if(themeColor != null) {
            _data["theme_color"] = themeColor?.toJson();
        }
        return _data;
    }
}

class ThemeColor {
    List<AvailableThemeColors>? availableThemeColors;
    SelectedThemeColor? selectedThemeColor;

    ThemeColor({this.availableThemeColors, this.selectedThemeColor});

    ThemeColor.fromJson(Map<String, dynamic> json) {
        availableThemeColors = json["available_theme_colors"] == null ? null : (json["available_theme_colors"] as List).map((e) => AvailableThemeColors.fromJson(e)).toList();
        selectedThemeColor = json["selected_theme_color"] == null ? null : SelectedThemeColor.fromJson(json["selected_theme_color"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(availableThemeColors != null) {
            _data["available_theme_colors"] = availableThemeColors?.map((e) => e.toJson()).toList();
        }
        if(selectedThemeColor != null) {
            _data["selected_theme_color"] = selectedThemeColor?.toJson();
        }
        return _data;
    }
}

class SelectedThemeColor {
    String? displayLabel;
    int? intValue;

    SelectedThemeColor({this.displayLabel, this.intValue});

    SelectedThemeColor.fromJson(Map<String, dynamic> json) {
        displayLabel = json["display_label"];
        intValue = json["int_value"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["display_label"] = displayLabel;
        _data["int_value"] = intValue;
        return _data;
    }
}

class AvailableThemeColors {
    String? displayLabel;
    int? intValue;

    AvailableThemeColors({this.displayLabel, this.intValue});

    AvailableThemeColors.fromJson(Map<String, dynamic> json) {
        displayLabel = json["display_label"];
        intValue = json["int_value"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["display_label"] = displayLabel;
        _data["int_value"] = intValue;
        return _data;
    }
}

class BroadcastChatPreferenceStatus {
    String? jsonResponse;

    BroadcastChatPreferenceStatus({this.jsonResponse});

    BroadcastChatPreferenceStatus.fromJson(Map<String, dynamic> json) {
        jsonResponse = json["json_response"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["json_response"] = jsonResponse;
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

class PinnedChannelsInfo {
    List<PinnedChannelsList>? pinnedChannelsList;
    bool? hasPublicChannels;

    PinnedChannelsInfo({this.pinnedChannelsList, this.hasPublicChannels});

    PinnedChannelsInfo.fromJson(Map<String, dynamic> json) {
        pinnedChannelsList = json["pinned_channels_list"] == null ? null : (json["pinned_channels_list"] as List).map((e) => PinnedChannelsList.fromJson(e)).toList();
        hasPublicChannels = json["has_public_channels"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(pinnedChannelsList != null) {
            _data["pinned_channels_list"] = pinnedChannelsList?.map((e) => e.toJson()).toList();
        }
        _data["has_public_channels"] = hasPublicChannels;
        return _data;
    }
}

class PinnedChannelsList {
    CreatorBroadcastChatThreadPreviewResponse? creatorBroadcastChatThreadPreviewResponse;
    dynamic creatorIgid;
    String? creatorUsername;
    String? groupImageBackgroundUri;
    String? groupImageUri;
    String? inviteLink;
    bool? isCreatorVerified;
    bool? isMember;
    int? numberOfMembers;
    dynamic shouldBadgeChannel;
    dynamic socialChannelInviteId;
    dynamic socialContextUsername;
    String? subtitle;
    String? threadIgid;
    int? threadSubtype;
    String? title;

    PinnedChannelsList({this.creatorBroadcastChatThreadPreviewResponse, this.creatorIgid, this.creatorUsername, this.groupImageBackgroundUri, this.groupImageUri, this.inviteLink, this.isCreatorVerified, this.isMember, this.numberOfMembers, this.shouldBadgeChannel, this.socialChannelInviteId, this.socialContextUsername, this.subtitle, this.threadIgid, this.threadSubtype, this.title});

    PinnedChannelsList.fromJson(Map<String, dynamic> json) {
        creatorBroadcastChatThreadPreviewResponse = json["creator_broadcast_chat_thread_preview_response"] == null ? null : CreatorBroadcastChatThreadPreviewResponse.fromJson(json["creator_broadcast_chat_thread_preview_response"]);
        creatorIgid = json["creator_igid"];
        creatorUsername = json["creator_username"];
        groupImageBackgroundUri = json["group_image_background_uri"];
        groupImageUri = json["group_image_uri"];
        inviteLink = json["invite_link"];
        isCreatorVerified = json["is_creator_verified"];
        isMember = json["is_member"];
        numberOfMembers = json["number_of_members"];
        shouldBadgeChannel = json["should_badge_channel"];
        socialChannelInviteId = json["social_channel_invite_id"];
        socialContextUsername = json["social_context_username"];
        subtitle = json["subtitle"];
        threadIgid = json["thread_igid"];
        threadSubtype = json["thread_subtype"];
        title = json["title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(creatorBroadcastChatThreadPreviewResponse != null) {
            _data["creator_broadcast_chat_thread_preview_response"] = creatorBroadcastChatThreadPreviewResponse?.toJson();
        }
        _data["creator_igid"] = creatorIgid;
        _data["creator_username"] = creatorUsername;
        _data["group_image_background_uri"] = groupImageBackgroundUri;
        _data["group_image_uri"] = groupImageUri;
        _data["invite_link"] = inviteLink;
        _data["is_creator_verified"] = isCreatorVerified;
        _data["is_member"] = isMember;
        _data["number_of_members"] = numberOfMembers;
        _data["should_badge_channel"] = shouldBadgeChannel;
        _data["social_channel_invite_id"] = socialChannelInviteId;
        _data["social_context_username"] = socialContextUsername;
        _data["subtitle"] = subtitle;
        _data["thread_igid"] = threadIgid;
        _data["thread_subtype"] = threadSubtype;
        _data["title"] = title;
        return _data;
    }
}

class CreatorBroadcastChatThreadPreviewResponse {
    int? audienceType;
    bool? isAddedToInbox;
    dynamic isCollaborator;
    dynamic isFollower;
    dynamic isInvitedCollaborator;
    dynamic isSubscriber;

    CreatorBroadcastChatThreadPreviewResponse({this.audienceType, this.isAddedToInbox, this.isCollaborator, this.isFollower, this.isInvitedCollaborator, this.isSubscriber});

    CreatorBroadcastChatThreadPreviewResponse.fromJson(Map<String, dynamic> json) {
        audienceType = json["audience_type"];
        isAddedToInbox = json["is_added_to_inbox"];
        isCollaborator = json["is_collaborator"];
        isFollower = json["is_follower"];
        isInvitedCollaborator = json["is_invited_collaborator"];
        isSubscriber = json["is_subscriber"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["audience_type"] = audienceType;
        _data["is_added_to_inbox"] = isAddedToInbox;
        _data["is_collaborator"] = isCollaborator;
        _data["is_follower"] = isFollower;
        _data["is_invited_collaborator"] = isInvitedCollaborator;
        _data["is_subscriber"] = isSubscriber;
        return _data;
    }
}

class HdProfilePicVersions {
    int? width;
    int? height;
    String? url;

    HdProfilePicVersions({this.width, this.height, this.url});

    HdProfilePicVersions.fromJson(Map<String, dynamic> json) {
        width = json["width"];
        height = json["height"];
        url = json["url"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["width"] = width;
        _data["height"] = height;
        _data["url"] = url;
        return _data;
    }
}

class CharityProfileFundraiserInfo {
    int? pk;
    ConsumptionSheetConfig? consumptionSheetConfig;

    CharityProfileFundraiserInfo({this.pk, this.consumptionSheetConfig});

    CharityProfileFundraiserInfo.fromJson(Map<String, dynamic> json) {
        pk = json["pk"];
        consumptionSheetConfig = json["consumption_sheet_config"] == null ? null : ConsumptionSheetConfig.fromJson(json["consumption_sheet_config"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["pk"] = pk;
        if(consumptionSheetConfig != null) {
            _data["consumption_sheet_config"] = consumptionSheetConfig?.toJson();
        }
        return _data;
    }
}

class ConsumptionSheetConfig {
    DonationAmountConfig? donationAmountConfig;

    ConsumptionSheetConfig({this.donationAmountConfig});

    ConsumptionSheetConfig.fromJson(Map<String, dynamic> json) {
        donationAmountConfig = json["donation_amount_config"] == null ? null : DonationAmountConfig.fromJson(json["donation_amount_config"]);
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(donationAmountConfig != null) {
            _data["donation_amount_config"] = donationAmountConfig?.toJson();
        }
        return _data;
    }
}

class DonationAmountConfig {
    DonationAmountConfig();

    DonationAmountConfig.fromJson(Map<String, dynamic> json) {

    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};

        return _data;
    }
}

class ActiveStandaloneFundraisers {
    ActiveStandaloneFundraisers();

    ActiveStandaloneFundraisers.fromJson(Map<String, dynamic> json) {

    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};

        return _data;
    }
}

class BioLinks {
    int? linkId;
    String? url;
    String? lynxUrl;
    String? linkType;
    bool? openExternalUrlWithInAppBrowser;

    BioLinks({this.linkId, this.url, this.lynxUrl, this.linkType, this.openExternalUrlWithInAppBrowser});

    BioLinks.fromJson(Map<String, dynamic> json) {
        linkId = json["link_id"];
        url = json["url"];
        lynxUrl = json["lynx_url"];
        linkType = json["link_type"];
        openExternalUrlWithInAppBrowser = json["open_external_url_with_in_app_browser"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["link_id"] = linkId;
        _data["url"] = url;
        _data["lynx_url"] = lynxUrl;
        _data["link_type"] = linkType;
        _data["open_external_url_with_in_app_browser"] = openExternalUrlWithInAppBrowser;
        return _data;
    }
}

class BiographyWithEntities {
    String? rawText;

    BiographyWithEntities({this.rawText});

    BiographyWithEntities.fromJson(Map<String, dynamic> json) {
        rawText = json["raw_text"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["raw_text"] = rawText;
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

class HdProfilePicUrlInfo {
    int? width;
    int? height;
    String? url;

    HdProfilePicUrlInfo({this.width, this.height, this.url});

    HdProfilePicUrlInfo.fromJson(Map<String, dynamic> json) {
        width = json["width"];
        height = json["height"];
        url = json["url"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["width"] = width;
        _data["height"] = height;
        _data["url"] = url;
        return _data;
    }
}