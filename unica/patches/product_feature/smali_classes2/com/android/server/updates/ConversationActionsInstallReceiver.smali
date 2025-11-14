.class public Lcom/android/server/updates/ConversationActionsInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "metadata/actions_suggestions"

    const-string/jumbo v1, "version"

    const-string v2, "/data/misc/textclassifier/"

    const-string/jumbo v3, "actions_suggestions.model"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final verifyVersion(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
