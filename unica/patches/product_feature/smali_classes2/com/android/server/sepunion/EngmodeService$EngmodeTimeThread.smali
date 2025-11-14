.class public final Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MAINLINE_API_LEVEL:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "33"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->MAINLINE_API_LEVEL:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const-string/jumbo v3, "engmode_service"

    const-string/jumbo v4, "engmode_service_time"

    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    sget v5, Lcom/android/server/sepunion/EngmodeService;->$r8$clinit:I

    :try_start_0
    new-instance v5, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v6, v0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isTokenInstalled()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v2, :cond_f

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_e

    iget-object v7, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-boolean v7, v7, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    if-nez v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/2)"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v0, "ENGTRQ0005"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v7, 0xa

    new-array v9, v7, [B

    const-string v10, "ENGTRS0004"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v11, "ENGTRS0005"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    new-array v12, v7, [B

    iget-object v13, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const-string/jumbo v14, "makeTimeReq() called"

    invoke-static {v3, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v15, v13, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v14, v13, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v14}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->makeTimeReq()[B

    move-result-object v13

    if-nez v13, :cond_0

    const-string/jumbo v0, "makeTimeReq() failed"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    sget v14, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->MAINLINE_API_LEVEL:I

    const/16 v15, 0x23

    if-lt v14, v15, :cond_1

    invoke-static {v13, v5, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "TRQ Header : "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    new-instance v9, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v9, v13, v0}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B

    move-result-object v9

    if-nez v9, :cond_2

    const-string/jumbo v0, "No valid response from EMS server!)"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    iget-object v13, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const-string/jumbo v15, "updateTimeReq() called"

    invoke-static {v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v6, v13, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v15, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v15, v13, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v15, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->updateTime([B)[B

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v0, "updateTime() failed"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    invoke-static {v9, v5, v12, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TRS Header : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v9, "RTD response is invalid"

    if-eqz v7, :cond_7

    :try_start_2
    aget-byte v7, v6, v5

    if-eqz v7, :cond_6

    if-eq v7, v2, :cond_4

    const/4 v10, 0x2

    if-eq v7, v10, :cond_c

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    const/16 v7, 0x5a

    new-array v9, v7, [B

    const/16 v10, 0x23

    if-lt v14, v10, :cond_5

    invoke-static {v6, v2, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    const/16 v10, 0x9

    invoke-static {v6, v10, v9, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    new-instance v7, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v7, v9, v0}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iput-boolean v2, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    goto :goto_3

    :cond_7
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    aget-byte v0, v6, v5

    if-eqz v0, :cond_a

    const/4 v7, 0x4

    if-eq v0, v2, :cond_8

    const/4 v10, 0x2

    if-eq v0, v10, :cond_8

    if-eq v0, v7, :cond_8

    const/4 v10, 0x6

    if-eq v0, v10, :cond_8

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    array-length v0, v6

    sub-int/2addr v0, v7

    if-gez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RTD response len is invalid ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    array-length v0, v6

    sub-int/2addr v0, v7

    new-array v9, v0, [B

    invoke-static {v6, v7, v9, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x2

    invoke-static {v0, v9, v10}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B

    goto :goto_3

    :cond_a
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iput-boolean v2, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    goto :goto_3

    :cond_b
    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iput-boolean v2, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    :cond_c
    :goto_3
    invoke-static {v6, v5}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-boolean v6, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    if-eqz v6, :cond_d

    iput-boolean v5, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, v0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService;->mUpdateTimer:Ljava/util/Timer;

    new-instance v6, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;

    invoke-direct {v6, v1}, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;-><init>(Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;)V

    const-wide/32 v9, 0x112a880

    invoke-virtual {v0, v6, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v6, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v7, v0, Lcom/android/server/sepunion/EngmodeService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v0, v1, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService;->mManager:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    const v6, 0xff0f

    invoke-virtual {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_5
    move v0, v8

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "end"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    const-string/jumbo v0, "no token, exit"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
