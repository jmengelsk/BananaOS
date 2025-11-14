.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$LocalService;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroid/content/ComponentName;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    iput-wide p6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$5:J

    iput-object p8, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$6:Landroid/content/ComponentName;

    iput p9, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$7:I

    iput p10, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$8:I

    iput-object p11, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$9:Ljava/util/ArrayList;

    iput p12, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$10:I

    iput p13, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$11:I

    iput p14, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$12:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    move-object v2, v1

    iget v1, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    move-object v3, v2

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    iget-wide v6, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$5:J

    iget-object v8, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$6:Landroid/content/ComponentName;

    iget v9, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$7:I

    iget v10, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$8:I

    iget-object v11, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$9:Ljava/util/ArrayList;

    iget v12, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$10:I

    iget v13, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$11:I

    iget v14, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$12:I

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    move-object v15, v3

    move-object v3, v0

    move-object v0, v15

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    return-void
.end method
