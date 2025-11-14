.class public final Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>(CZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;->mCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    iget-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    const-string/jumbo p1, "android.intent.action.MAIN"

    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;->mCategory:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object p1
.end method
