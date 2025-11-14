.class public abstract Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mIntent:Landroid/content/Intent;

.field public final mShift:Z

.field public final mShortcutChar:C


# direct methods
.method public constructor <init>(CZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShortcutChar:C

    iput-boolean p2, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShift:Z

    return-void
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
