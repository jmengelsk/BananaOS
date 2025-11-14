.class public Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ARG_GETHOMEMODE_HOMEMODE:Ljava/lang/String; = "home_mode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FEATURE_SHORTCUT_FOR_EASYMODE:I = 0x3e9

.field public static final HOME_MODE_APPS:I = 0x3

.field public static final HOME_MODE_EASY:I = 0x1

.field public static final HOME_MODE_HOME_ONLY:I = 0x2

.field public static final KEY_CELLDIMENSION_COLS_INT:Ljava/lang/String; = "cols"

.field public static final KEY_CELLDIMENSION_ROWS_INT:Ljava/lang/String; = "rows"

.field public static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field public static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field public static final KEY_COORDINATION_SIZE_POINT:Ljava/lang/String; = "coordination_size"

.field public static final KEY_FEATURE_INT:Ljava/lang/String; = "feature"

.field public static final KEY_HOMEMODE_STRING:Ljava/lang/String; = "home_mode"

.field public static final KEY_INDEX_INT:Ljava/lang/String; = "index"

.field public static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field public static final KEY_ITEMCOUNT_INT:Ljava/lang/String; = "itemcount"

.field public static final KEY_PAGE_INT:Ljava/lang/String; = "page"

.field public static final KEY_STATE_BOOLEAN:Ljava/lang/String; = "state"

.field public static final KEY_SUPPLEMENT_SERVICE_PAGE_VISIBILITY_BOOLEAN:Ljava/lang/String; = "visibility"

.field public static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field public static final METHOD_ADD_WIDGET:Ljava/lang/String; = "add_widget"

.field public static final METHOD_DISABLE_APPS_BUTTON:Ljava/lang/String; = "disable_apps_button"

.field public static final METHOD_ENABLE_APPS_BUTTON:Ljava/lang/String; = "enable_apps_button"

.field public static final METHOD_GET_APPS_BUTTON_STATE:Ljava/lang/String; = "get_apps_button_state"

.field public static final METHOD_GET_APPS_CELL_DIMENSION:Ljava/lang/String; = "get_apps_cell_dimension"

.field public static final METHOD_GET_HOME_CELL_DIMENSION:Ljava/lang/String; = "get_home_cell_dimension"

.field public static final METHOD_GET_HOME_MODE:Ljava/lang/String; = "get_home_mode"

.field public static final METHOD_GET_HOTSEAT_ITEM:Ljava/lang/String; = "get_hotseat_item"

.field public static final METHOD_GET_HOTSEAT_ITEM_COUNT:Ljava/lang/String; = "get_hotseat_item_count"

.field public static final METHOD_GET_HOTSEAT_MAXITEM_COUNT:Ljava/lang/String; = "get_hotseat_maxitem_count"

.field public static final METHOD_GET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "get_supplement_service_page_visibility"

.field public static final METHOD_IS_SUPPORTED:Ljava/lang/String; = "is_supported"

.field public static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field public static final METHOD_REMOVE_HOTSEAT_ITEM:Ljava/lang/String; = "remove_hotseat_item"

.field public static final METHOD_REMOVE_PAGE_FROM_HOME:Ljava/lang/String; = "remove_page_from_home"

.field public static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field public static final METHOD_REMOVE_WIDGET:Ljava/lang/String; = "remove_widget"

.field public static final METHOD_SET_HOTSEAT_ITEM:Ljava/lang/String; = "add_hotseat_item"

.field public static final METHOD_SET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "set_supplement_service_page_visibility"

.field public static final METHOD_SWITCH_HOME_MODE:Ljava/lang/String; = "switch_home_mode"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final SUPPLEMENT_SERVICE_PAGE_INVISIBLE:I = 0x5

.field public static final SUPPLEMENT_SERVICE_PAGE_VISIBLE:I = 0x4

.field public static final VALUE_GETHOMEMODE_EASYMODE:Ljava/lang/String; = "easy_mode"

.field public static final VALUE_GETHOMEMODE_HOMEANDAPPSMODE:Ljava/lang/String; = "home_apps_mode"

.field public static final VALUE_GETHOMEMODE_HOMEONLYMODE:Ljava/lang/String; = "home_only_mode"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.android.app.launcher.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addShortcut(ILandroid/graphics/Point;Landroid/content/ComponentName;)I
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "coordination_position"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "component"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p2, "add_shortcut"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final addWidget(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "coordination_position"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "coordination_size"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "component"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p2, "add_widget"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getAppsButtonVisibility()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "get_apps_button_state"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "invocation_result"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public final getAppsCellDimension()Landroid/util/Size;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "get_apps_cell_dimension"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "rows"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "cols"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public final getHomeCellDimension()Landroid/util/Size;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "get_home_cell_dimension"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "rows"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "cols"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public final getHomeMode()I
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const-string/jumbo v2, "get_home_mode"

    const-string/jumbo v3, "home_mode"

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "easy_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "home_apps_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string/jumbo v0, "home_only_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x2

    return p0
.end method

.method public final getHotseatItem(I)Landroid/content/ComponentName;
    .locals 3

    const-string/jumbo v0, "index"

    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "get_hotseat_item"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "component"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p1, :cond_0

    instance-of p1, p0, Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    :cond_0
    return-object v2
.end method

.method public final getHotseatItemCount()I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "get_hotseat_item_count"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "itemcount"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getHotseatMaxItemCount()I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "get_hotseat_maxitem_count"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "itemcount"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getSupplementServicePageVisibility()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "get_supplement_service_page_visibility"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "invocation_result"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "visibility"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSupported(I)I
    .locals 3

    const-string/jumbo v0, "feature"

    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "is_supported"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final makeEmptyPosition(ILandroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "coordination_position"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "coordination_size"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p2, "make_empty_position"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final removeHotseatItem(I)I
    .locals 3

    const-string/jumbo v0, "index"

    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_hotseat_item"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final removePageFromHome(I)I
    .locals 3

    const-string/jumbo v0, "page"

    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_page_from_home"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final removeShortcut(Landroid/content/ComponentName;)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_shortcut"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final removeWidget(Landroid/content/ComponentName;)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "remove_widget"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final setAppsButtonVisibility(Z)I
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "enable_apps_button"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "disable_apps_button"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final setHotseatItem(ILandroid/content/ComponentName;)I
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "component"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p2, "add_hotseat_item"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final setSupplementServicePageVisibility(Z)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "set_supplement_service_page_visibility"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final switchHomeMode(I)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x3

    const-string/jumbo v2, "home_mode"

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "home_apps_mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string/jumbo p1, "home_only_mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "switch_home_mode"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "invocation_result"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
