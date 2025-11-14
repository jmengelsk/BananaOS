.class public final Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRole:Ljava/lang/String;


# direct methods
.method public constructor <init>(CZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object p1
.end method
