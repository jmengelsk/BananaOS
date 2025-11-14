.class public final Lcom/android/server/pinner/PinnerService$BinderService;
.super Landroid/app/pinner/IPinnerService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-direct {p0}, Landroid/app/pinner/IPinnerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object v2, v2, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "PinnerService"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v5, "Pinner Configs:\n"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "   Total Pinner quota: %d%% of total device memory\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget v7, v7, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "   Maximum Pinner quota: %d bytes (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-wide v7, v7, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-wide v8, v8, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130000000000000L  # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "   Max Home App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget v7, v7, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget v8, v8, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "   Max Assistant App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget v7, v7, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget v8, v8, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "   Max Camera App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget v7, v7, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget v8, v8, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "\nPinned Files:\n"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v5, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    monitor-enter v5

    :try_start_b3
    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object v7, v7, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v12, 0x0

    :goto_c1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_206

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v6, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object v6, v6, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pinner/PinnerService$PinnedApp;

    invoke-static {v15}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, " uid="

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v15, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, " active="

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v15, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v15, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_111

    iget-object v6, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pinner/PinnedFile;

    iget-object v6, v6, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_111

    :catchall_10c
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_3e5

    :cond_111
    :goto_111
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object v6, v6, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pinner/PinnerService$PinnedApp;

    iget-object v6, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-wide/from16 v17, v10

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    :goto_12d
    if-ge v15, v14, :cond_1cc

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 p3, v6

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/server/pinner/PinnedFile;

    move-object/from16 v16, v7

    const-string v7, "  "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "%s pinned:%d bytes (%.2f MB) pinlist:%b\n"

    move-wide/from16 v21, v12

    iget-object v12, v6, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move/from16 v23, v14

    iget-wide v13, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move/from16 v24, v15

    iget-wide v14, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v14, v14

    div-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    iget-boolean v15, v6, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v12, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long v14, v21, v12

    add-long/2addr v8, v12

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-wide v12, v14

    const/4 v14, 0x0

    :goto_178
    if-ge v14, v7, :cond_1be

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/server/pinner/PinnedFile;

    move-object/from16 v21, v6

    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "%s pinned:%d bytes (%.2f MB) pinlist:%b (Dependency)\n"

    move/from16 v22, v7

    iget-object v7, v15, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move-wide/from16 v25, v8

    iget-wide v8, v15, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-wide/from16 v27, v10

    iget-wide v9, v15, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v9, v9

    div-double v9, v9, v17

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-boolean v10, v15, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v6, v15, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v12, v6

    add-long v10, v27, v6

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-wide/from16 v8, v25

    goto :goto_178

    :cond_1be
    move-wide/from16 v25, v8

    move-wide/from16 v27, v10

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    move/from16 v14, v23

    move/from16 v15, v24

    goto/16 :goto_12d

    :cond_1cc
    move-object/from16 v16, v7

    move-wide/from16 v21, v12

    add-long v6, v8, v10

    const-string/jumbo v12, "Total Pinned = %d (%.2f MB) [App=%d (%.2f MB), Dependencies=%d (%.2f MB)]\n\n"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    long-to-double v6, v6

    div-double v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    long-to-double v6, v8

    div-double v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    long-to-double v6, v10

    div-double v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    filled-new-array/range {v23 .. v28}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v12, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v7, v16

    move-wide/from16 v10, v17

    move-wide/from16 v12, v21

    const/4 v6, 0x0

    goto/16 :goto_c1

    :cond_206
    move-wide/from16 v17, v10

    const-wide/16 v19, 0x0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object v6, v6, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_219
    :goto_219
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pinner/PinnedFile;

    iget-object v8, v7, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_219

    iget-object v8, v7, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_219

    iget-object v7, v7, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_219

    :cond_23b
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_340

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v6, v4}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nGroup:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide/from16 v6, v19

    move-wide v8, v6

    :goto_26f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_309

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pinner/PinnedFile;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_282

    goto :goto_26f

    :cond_282
    const-string v11, "  %s pinned: %d bytes (%.2f MB) pinlist:%b\n"

    iget-object v14, v10, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move-object/from16 p3, v3

    move-object v15, v4

    iget-wide v3, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_28f
    .catchall {:try_start_b3 .. :try_end_28f} :catchall_10c

    move-object/from16 v16, v5

    :try_start_291
    iget-wide v4, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v4, v4

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-boolean v5, v10, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v14, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v3, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v12, v3

    add-long/2addr v6, v3

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2b5
    if-ge v5, v4, :cond_302

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Lcom/android/server/pinner/PinnedFile;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c6

    goto :goto_2b5

    :cond_2c6
    const-string v11, "  "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "%s pinned:%d bytes (%.2f MB) pinlist:%b (Dependency)\n"

    iget-object v14, v10, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move-object/from16 v21, v3

    move/from16 v22, v4

    iget-wide v3, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v23, v5

    iget-wide v4, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v4, v4

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-boolean v5, v10, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v14, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v3, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v12, v3

    add-long/2addr v8, v3

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    goto :goto_2b5

    :catchall_2ff
    move-exception v0

    goto/16 :goto_3e5

    :cond_302
    move-object/from16 v3, p3

    move-object v4, v15

    move-object/from16 v5, v16

    goto/16 :goto_26f

    :cond_309
    move-object/from16 p3, v3

    move-object/from16 v16, v5

    add-long v3, v6, v8

    const-string/jumbo v5, "Total Pinned = %d (%.2f MB) [Main=%d (%.2f MB), Dependencies=%d (%.2f MB)]\n\n"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    long-to-double v3, v3

    div-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    long-to-double v3, v6

    div-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    long-to-double v3, v8

    div-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    filled-new-array/range {v21 .. v26}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    goto/16 :goto_23f

    :cond_340
    move-object/from16 v16, v5

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-wide v3, v2, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    cmp-long v3, v3, v19

    if-eqz v3, :cond_36d

    const-string/jumbo v3, "Pinned anon region: %d (%.2f MB)\n"

    iget-wide v4, v2, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-wide v4, v4, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    long-to-double v4, v4

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-wide v2, v2, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    add-long/2addr v12, v2

    :cond_36d
    const-string/jumbo v2, "Total pinned: %d bytes (%.2f MB)\n"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    long-to-double v4, v12

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "Available Pinner quota: %d bytes (%.2f MB)\n"

    iget-object v3, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-wide v4, v3, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    iget-wide v6, v3, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-wide v5, v4, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    iget-wide v7, v4, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v5, v7

    long-to-double v4, v5

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object v2, v2, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e3

    const-string/jumbo v2, "Pending repin: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    iget-object v0, v0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3c3

    :cond_3e0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_3e3
    monitor-exit v16

    return-void

    :goto_3e5
    monitor-exit v16
    :try_end_3e6
    .catchall {:try_start_291 .. :try_end_3e6} :catchall_2ff

    throw v0
.end method

.method public final getPinnerStats()Ljava/util/List;
    .registers 8

    invoke-virtual {p0}, Landroid/app/pinner/IPinnerService$Stub;->getPinnerStats_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_4d

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    new-instance v3, Landroid/app/pinner/PinnedFileStat;

    iget-object v4, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    iget-wide v5, v2, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_34
    iget-wide v1, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4c

    new-instance v1, Landroid/app/pinner/PinnedFileStat;

    const-string/jumbo v2, "[anon]"

    iget-wide v3, p0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    const-string/jumbo p0, "[anon]"

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    return-object v0

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 9

    array-length p1, p4

    const/4 p3, 0x1

    const/4 p5, -0x1

    const/4 v0, 0x0

    if-ge p1, p3, :cond_1c

    new-instance p0, Ljava/io/PrintWriter;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string p1, "Command is not given."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p6, p5, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_1c
    const/4 p1, 0x0

    aget-object p4, p4, p1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "repin"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string/jumbo p0, "Unknown pinner command: "

    const-string p1, ". Supported commands: repin"

    invoke-static {p0, p4, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/PrintWriter;

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p6, p5, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_48
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    sget p4, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    new-instance p4, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-static {p4, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    iget-object p2, p2, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-virtual {p2, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    new-instance p2, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p6, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
