.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    return-void
.end method


# virtual methods
.method public final startShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 19

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    sget v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutInner(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method
