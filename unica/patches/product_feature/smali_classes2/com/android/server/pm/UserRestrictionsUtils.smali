.class public abstract Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

.field public static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

.field public static final FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

.field public static final GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;

.field public static final MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

.field public static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_LOCAL_RESTRICTIONS:Ljava/util/Set;

.field public static final PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

.field public static final USER_RESTRICTIONS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 81

    const-string/jumbo v79, "no_thread_network"

    const-string/jumbo v80, "no_change_near_field_communication_radio"

    const-string/jumbo v1, "no_config_wifi"

    const-string/jumbo v2, "no_config_locale"

    const-string/jumbo v3, "no_modify_accounts"

    const-string/jumbo v4, "no_install_apps"

    const-string/jumbo v5, "no_uninstall_apps"

    const-string/jumbo v6, "no_share_location"

    const-string/jumbo v7, "no_install_unknown_sources"

    const-string/jumbo v8, "no_install_unknown_sources_globally"

    const-string/jumbo v9, "no_config_bluetooth"

    const-string/jumbo v10, "no_bluetooth"

    const-string/jumbo v11, "no_bluetooth_sharing"

    const-string/jumbo v12, "no_usb_file_transfer"

    const-string/jumbo v13, "no_config_credentials"

    const-string/jumbo v14, "no_remove_user"

    const-string/jumbo v15, "no_remove_managed_profile"

    const-string/jumbo v16, "no_debugging_features"

    const-string/jumbo v17, "no_config_vpn"

    const-string/jumbo v18, "no_config_date_time"

    const-string/jumbo v19, "no_config_tethering"

    const-string/jumbo v20, "no_network_reset"

    const-string/jumbo v21, "no_factory_reset"

    const-string/jumbo v22, "no_add_user"

    const-string/jumbo v23, "no_add_managed_profile"

    const-string/jumbo v24, "no_add_clone_profile"

    const-string/jumbo v25, "no_add_private_profile"

    const-string/jumbo v26, "ensure_verify_apps"

    const-string/jumbo v27, "no_config_cell_broadcasts"

    const-string/jumbo v28, "no_config_mobile_networks"

    const-string/jumbo v29, "no_control_apps"

    const-string/jumbo v30, "no_physical_media"

    const-string/jumbo v31, "no_unmute_microphone"

    const-string/jumbo v32, "no_adjust_volume"

    const-string/jumbo v33, "no_outgoing_calls"

    const-string/jumbo v34, "no_sms"

    const-string/jumbo v35, "no_fun"

    const-string/jumbo v36, "no_create_windows"

    const-string/jumbo v37, "no_system_error_dialogs"

    const-string/jumbo v38, "no_cross_profile_copy_paste"

    const-string/jumbo v39, "no_outgoing_beam"

    const-string/jumbo v40, "no_wallpaper"

    const-string/jumbo v41, "no_safe_boot"

    const-string/jumbo v42, "allow_parent_profile_app_linking"

    const-string/jumbo v43, "no_record_audio"

    const-string/jumbo v44, "no_camera"

    const-string/jumbo v45, "no_run_in_background"

    const-string/jumbo v46, "no_data_roaming"

    const-string/jumbo v47, "no_set_user_icon"

    const-string/jumbo v48, "no_set_wallpaper"

    const-string/jumbo v49, "no_oem_unlock"

    const-string/jumbo v50, "disallow_unmute_device"

    const-string/jumbo v51, "no_autofill"

    const-string/jumbo v52, "no_content_capture"

    const-string/jumbo v53, "no_content_suggestions"

    const-string/jumbo v54, "no_user_switch"

    const-string/jumbo v55, "no_unified_password"

    const-string/jumbo v56, "no_config_location"

    const-string/jumbo v57, "no_airplane_mode"

    const-string/jumbo v58, "no_config_brightness"

    const-string/jumbo v59, "no_sharing_into_profile"

    const-string/jumbo v60, "no_ambient_display"

    const-string/jumbo v61, "no_config_screen_timeout"

    const-string/jumbo v62, "no_printing"

    const-string/jumbo v63, "disallow_config_private_dns"

    const-string/jumbo v64, "disallow_microphone_toggle"

    const-string/jumbo v65, "no_non_market_app_by_knox"

    const-string/jumbo v66, "disallow_camera_toggle"

    const-string/jumbo v67, "no_change_wifi_state"

    const-string/jumbo v68, "no_wifi_tethering"

    const-string/jumbo v69, "no_grant_admin"

    const-string/jumbo v70, "no_sharing_admin_configured_wifi"

    const-string/jumbo v71, "no_wifi_direct"

    const-string/jumbo v72, "no_add_wifi_config"

    const-string/jumbo v73, "no_cellular_2g"

    const-string/jumbo v74, "no_ultra_wideband_radio"

    const-string/jumbo v75, "disallow_config_default_apps"

    const-string/jumbo v76, "no_near_field_communication_radio"

    const-string/jumbo v77, "no_sim_globally"

    const-string/jumbo v78, "no_assist_content"

    filled-new-array/range {v1 .. v80}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_102

    const/4 v1, 0x1

    goto :goto_103

    :cond_102
    const/4 v1, 0x0

    :goto_103
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v0, "no_add_managed_profile"

    const-string/jumbo v1, "no_remove_managed_profile"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    const-string/jumbo v0, "no_record_audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_airplane_mode"

    const-string/jumbo v2, "no_bluetooth"

    const-string/jumbo v3, "no_usb_file_transfer"

    const-string/jumbo v4, "no_config_tethering"

    const-string/jumbo v5, "no_network_reset"

    const-string/jumbo v6, "no_factory_reset"

    const-string/jumbo v7, "no_add_user"

    const-string/jumbo v8, "no_config_cell_broadcasts"

    const-string/jumbo v9, "no_config_mobile_networks"

    const-string/jumbo v10, "no_physical_media"

    const-string/jumbo v11, "no_sms"

    const-string/jumbo v12, "no_fun"

    const-string/jumbo v13, "no_safe_boot"

    const-string/jumbo v14, "no_create_windows"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v13, "no_thread_network"

    const-string/jumbo v14, "no_change_near_field_communication_radio"

    const-string/jumbo v2, "no_user_switch"

    const-string/jumbo v3, "disallow_config_private_dns"

    const-string/jumbo v4, "disallow_microphone_toggle"

    const-string/jumbo v5, "disallow_camera_toggle"

    const-string/jumbo v6, "no_change_wifi_state"

    const-string/jumbo v7, "no_wifi_tethering"

    const-string/jumbo v8, "no_wifi_direct"

    const-string/jumbo v9, "no_add_wifi_config"

    const-string/jumbo v10, "no_cellular_2g"

    const-string/jumbo v11, "no_ultra_wideband_radio"

    const-string/jumbo v12, "no_near_field_communication_radio"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_wallpaper"

    const-string/jumbo v2, "no_oem_unlock"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    const-string/jumbo v9, "no_assist_content"

    const-string/jumbo v10, "disallow_config_default_apps"

    const-string/jumbo v1, "no_adjust_volume"

    const-string/jumbo v2, "no_bluetooth_sharing"

    const-string/jumbo v3, "no_config_date_time"

    const-string/jumbo v4, "no_system_error_dialogs"

    const-string/jumbo v5, "no_run_in_background"

    const-string/jumbo v6, "no_unmute_microphone"

    const-string/jumbo v7, "disallow_unmute_device"

    const-string/jumbo v8, "no_camera"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v12, "no_thread_network"

    const-string/jumbo v13, "no_change_near_field_communication_radio"

    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_config_date_time"

    const-string/jumbo v3, "disallow_config_private_dns"

    const-string/jumbo v4, "no_change_wifi_state"

    const-string/jumbo v5, "no_debugging_features"

    const-string/jumbo v6, "no_wifi_tethering"

    const-string/jumbo v7, "no_wifi_direct"

    const-string/jumbo v8, "no_add_wifi_config"

    const-string/jumbo v9, "no_cellular_2g"

    const-string/jumbo v10, "no_ultra_wideband_radio"

    const-string/jumbo v11, "no_near_field_communication_radio"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v0, "no_sim_globally"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PROFILE_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v24, "no_config_brightness"

    const-string/jumbo v25, "no_config_screen_timeout"

    const-string/jumbo v2, "no_config_bluetooth"

    const-string/jumbo v3, "no_config_location"

    const-string/jumbo v4, "no_config_wifi"

    const-string/jumbo v5, "no_content_capture"

    const-string/jumbo v6, "no_content_suggestions"

    const-string/jumbo v7, "no_debugging_features"

    const-string/jumbo v8, "no_share_location"

    const-string/jumbo v9, "no_outgoing_calls"

    const-string/jumbo v10, "no_camera"

    const-string/jumbo v11, "no_bluetooth"

    const-string/jumbo v12, "no_bluetooth_sharing"

    const-string/jumbo v13, "no_config_cell_broadcasts"

    const-string/jumbo v14, "no_config_mobile_networks"

    const-string/jumbo v15, "no_config_tethering"

    const-string/jumbo v16, "no_data_roaming"

    const-string/jumbo v17, "no_safe_boot"

    const-string/jumbo v18, "no_sms"

    const-string/jumbo v19, "no_usb_file_transfer"

    const-string/jumbo v20, "no_physical_media"

    const-string/jumbo v21, "no_unmute_microphone"

    const-string/jumbo v22, "disallow_config_default_apps"

    const-string/jumbo v23, "no_add_private_profile"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_LOCAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v1, "no_bluetooth_sharing"

    const-string/jumbo v2, "no_debugging_features"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    const-string/jumbo v3, "ensure_verify_apps"

    filled-new-array {v3, v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    const-string/jumbo v5, "no_config_date_time"

    const-string/jumbo v6, "no_outgoing_calls"

    const-string/jumbo v1, "no_add_user"

    const-string/jumbo v2, "no_debugging_features"

    const-string/jumbo v3, "no_install_unknown_sources"

    const-string/jumbo v4, "no_safe_boot"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->FINANCED_DEVICE_OWNER_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_f
    invoke-static {p1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_1f

    return v2

    :cond_36
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_3e

    return v2

    :cond_55
    return v0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_b

    :cond_23
    if-eqz v1, :cond_2b

    const-string/jumbo p2, "none"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void

    :cond_2c
    const-string/jumbo p2, "null"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isGlobal(ILjava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_16

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->MAIN_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_16
    const/4 v0, 0x2

    if-ne p0, v0, :cond_23

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_OWNER_ORGANIZATION_OWNED_PARENT_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    :cond_23
    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p0, 0x0

    return p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 11

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_88

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    const/4 v2, 0x0

    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown restriction queried by uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz v2, :cond_41

    array-length v5, v2

    if-lez v5, :cond_41

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    if-le v5, v1, :cond_3c

    const-string v1, " et al"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UserRestrictionsUtils"

    if-eqz p0, :cond_80

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_55

    goto :goto_75

    :cond_55
    if-nez v2, :cond_58

    goto :goto_80

    :cond_58
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    move v5, v4

    :goto_5d
    array-length v6, v2

    if-ge v5, v6, :cond_80

    :try_start_60
    aget-object v6, v2, v5

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-wide/32 v8, 0xc2000

    invoke-interface {p0, v6, v8, v9, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_7d

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_73} :catch_7d

    if-eqz v6, :cond_7d

    :goto_75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :catch_7d
    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_80
    :goto_80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    return v4

    :cond_88
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    :goto_a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-nez p1, :cond_10

    goto :goto_2e

    :cond_10
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_18

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_24
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 8

    array-length v0, p2

    if-nez v0, :cond_8

    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    aget-object v3, p2, v2

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v4, v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    return v1
.end method

.method public static writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_f

    :cond_26
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    :cond_3b
    const-string/jumbo v3, "Unknown user restriction detected: "

    const-string/jumbo v4, "UserRestrictionsUtils"

    invoke-static {v3, v2, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_45
    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
