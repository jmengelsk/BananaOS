.class public final Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public key:Ljava/lang/String;

.field public previousValue:I

.field public rawKey:Ljava/lang/String;

.field public tableType:I

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    return-void
.end method


# virtual methods
.method public final getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I
    .locals 4

    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p1, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {p1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, p0, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, p0, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    move-result v0

    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    :cond_0
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v3, p1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v4, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    const-string/jumbo v0, "any_screen_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "accessibility_corner_action_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_4

    sget p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->$r8$clinit:I

    const-string/jumbo p0, "SemExclusiveTaskManagerService"

    const-string/jumbo p1, "This case shouldn\'t be included at ignore list"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object p1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
