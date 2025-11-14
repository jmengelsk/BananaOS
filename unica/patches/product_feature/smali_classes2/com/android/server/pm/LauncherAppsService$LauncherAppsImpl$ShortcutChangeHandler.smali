.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public final onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_13

    iget-object v6, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/content/pm/IShortcutChangeCallback;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/os/UserHandle;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v2, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v8, v11, v12, v10, v4}, Lcom/android/server/pm/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v8

    :goto_1
    if-nez v8, :cond_1

    move-object/from16 v9, p2

    move/from16 v16, v3

    goto/16 :goto_c

    :cond_1
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    move-result-wide v11

    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result v7

    if-eqz v8, :cond_3

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-object/from16 v9, p2

    move/from16 v16, v3

    goto/16 :goto_b

    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_2

    :cond_4
    move v8, v4

    :goto_2
    and-int/lit8 v16, v7, 0x2

    if-eqz v16, :cond_5

    move/from16 v16, v9

    goto :goto_3

    :cond_5
    move/from16 v16, v4

    :goto_3
    and-int/lit8 v17, v7, 0x8

    if-eqz v17, :cond_6

    move/from16 v17, v9

    goto :goto_4

    :cond_6
    move/from16 v17, v4

    :goto_4
    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v9, v4

    :goto_5
    if-eqz v16, :cond_8

    const/4 v7, 0x2

    goto :goto_6

    :cond_8
    move v7, v4

    :goto_6
    or-int/2addr v7, v8

    if-eqz v17, :cond_9

    const/16 v8, 0x20

    goto :goto_7

    :cond_9
    move v8, v4

    :goto_7
    or-int/2addr v7, v8

    if-eqz v9, :cond_a

    const v8, 0x60004000

    goto :goto_8

    :cond_a
    move v8, v4

    :goto_8
    or-int/2addr v7, v8

    move v8, v4

    :goto_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    move/from16 v16, v3

    if-eqz v15, :cond_b

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_a

    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v3, v11, v18

    if-eqz v3, :cond_c

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v18

    cmp-long v3, v11, v18

    if-lez v3, :cond_c

    goto :goto_a

    :cond_c
    if-eqz v13, :cond_d

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_a

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_a

    :cond_e
    if-nez p4, :cond_f

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v3

    and-int/2addr v3, v7

    if-eqz v3, :cond_10

    :cond_f
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v16

    const/4 v4, 0x0

    goto :goto_9

    :goto_b
    invoke-static {v10}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_12

    if-eqz p4, :cond_11

    :try_start_0
    invoke-interface {v6, v1, v10, v2}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_c

    :cond_11
    invoke-interface {v6, v1, v10, v2}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_12
    :goto_c
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    return-void
.end method
