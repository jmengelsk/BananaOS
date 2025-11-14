.class public final Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDataValid:Z

.field public mNormalValid:Z

.field public rotation:I

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_1d

    :catch_0
    move-exception v0

    goto/16 :goto_1b

    :catch_1
    :try_start_2
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "service.camera.running"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "service.camera.sfs.running"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    :goto_2
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_4
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    const/16 v4, 0xb

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-lt v0, v4, :cond_6

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    :cond_6
    :goto_3
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v8, -0x1

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v8, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v6, :cond_b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v9

    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    goto :goto_5

    :cond_8
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v9

    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    iput v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v9

    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    add-int/2addr v9, v10

    invoke-static {v0, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    goto :goto_5

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v9

    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v10, v10, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->TIME_SLICE:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    :cond_b
    :goto_5
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_e

    if-eq v0, v7, :cond_d

    if-eq v0, v5, :cond_c

    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_6

    :cond_c
    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_6

    :cond_d
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_6

    :cond_e
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_6

    :cond_f
    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    :cond_10
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v8, :cond_11

    goto/16 :goto_7

    :cond_11
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v0, v6, :cond_13

    const-string v0, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AfcThread mLuminance_sub : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v9, v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , AfpcPeriodCount_sub : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , rotation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , AOD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v8, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v10

    invoke-static {v8, v0, v9, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadSub(IIIZ)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_13

    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :try_start_6
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    goto/16 :goto_0

    :cond_12
    :goto_7
    const-string v0, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AfcThread mLuminance : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v9, v9, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , AfpcPeriodCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , rotation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , AOD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v8, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    iget-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v10

    invoke-static {v8, v0, v9, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataRead(IIIZ)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_13

    :try_start_7
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_3
    :try_start_a
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z

    goto/16 :goto_0

    :cond_13
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v9, v8, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0x9

    const/16 v14, 0x64

    const-wide/high16 v15, 0x4049000000000000L    # 50.0

    if-lt v0, v9, :cond_2b

    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v7, :cond_14

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mApplyValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    move-result v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v5, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    :catch_4
    move-exception v0

    :try_start_c
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :goto_8
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_14
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_17

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mApplyValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataEvaluate()F

    move-result v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v5, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    :catch_5
    move-exception v0

    :try_start_e
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :goto_9
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v6, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    array-length v6, v6

    if-ge v0, v6, :cond_16

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v6, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    aget v5, v6, v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_16

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataWriteV2(I)I

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.sm.ACTION_ABC_SOLUTION"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v7, "com.samsung.android.lool"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_15
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "afpcDataWrite - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    :catch_6
    move-exception v0

    :try_start_10
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_16
    :goto_a
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_17
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v7, 0xa

    if-ne v0, v5, :cond_19

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mEffAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    const-wide v8, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v5, v8

    if-ltz v0, :cond_18

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v7, :cond_18

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_18

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_b

    :catch_7
    move-exception v0

    :try_start_12
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_18
    :goto_b
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_19
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v6, :cond_1b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mEffAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v5, 0x14

    if-ge v0, v5, :cond_1a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    const-wide v7, 0x4052c00000000000L    # 75.0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_1a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    aget v0, v0, v7

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_1a

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_c

    :catch_8
    move-exception v0

    :try_start_14
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_1a
    :goto_c
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_1b
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v5, 0x6

    const/16 v6, 0x1e

    if-ne v0, v5, :cond_1d

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-wide v17, 0x4051800000000000L    # 70.0

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAvgLum : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mMaxBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mNBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEffAvgLum : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mEffMaxBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mEffNBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v6, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v17

    if-ltz v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    aget v0, v0, v7

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_1c

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_d

    :catch_9
    move-exception v0

    :try_start_16
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_1c
    :goto_d
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_1d
    const-wide v17, 0x4051800000000000L    # 70.0

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_1f

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAvgLum : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mMaxBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mNBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEffAvgLum : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mEffMaxBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mEffNBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v6, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v17

    if-ltz v0, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v7, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    aget v0, v7, v0

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_1e

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_e

    :catch_a
    move-exception v0

    :try_start_18
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_1e
    :goto_e
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_1f
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_22

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAvgLum : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mMaxBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mNBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEffAvgLum : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mEffMaxBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", mEffNBDI : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const v5, 0x35bc5

    if-ne v0, v5, :cond_20

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v6, :cond_21

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v15

    if-ltz v0, :cond_21

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v7, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    aget v0, v7, v0

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_21

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_f

    :catch_b
    move-exception v0

    :try_start_1a
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    goto/16 :goto_f

    :cond_20
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v5, 0x32

    if-ge v0, v5, :cond_21

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v15

    if-ltz v0, :cond_21

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    aget v0, v0, v7

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_21

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_f

    :catch_c
    move-exception v0

    :try_start_1c
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_21
    :goto_f
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_22
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-eq v0, v13, :cond_29

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v4, :cond_23

    goto/16 :goto_13

    :cond_23
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v7, :cond_25

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mEffAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v14, :cond_24

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v15

    if-ltz v0, :cond_24

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v7

    aget v0, v0, v7

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_24

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_10

    :catch_d
    move-exception v0

    :try_start_1e
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_24
    :goto_10
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_25
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v12, :cond_27

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mEffAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v14, :cond_26

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v15

    if-ltz v0, :cond_26

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v7, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V9:[F

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    aget v0, v7, v0

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_26

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_11

    :catch_e
    move-exception v0

    :try_start_20
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_26
    :goto_11
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_27
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v11, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mEffAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v14, :cond_28

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v15

    if-ltz v0, :cond_28

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v7, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V9:[F

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    aget v0, v7, v0

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_28

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :try_start_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetENABLE_ABC_MAIN(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    if-eq v0, v5, :cond_28

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputUPDATE_NEEDED_MAIN(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto :goto_12

    :catch_f
    move-exception v0

    :try_start_22
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_28
    :goto_12
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_15

    :cond_29
    :goto_13
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSave(I)I

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLum()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDI()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mEffAvgLum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v14, :cond_2a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    cmpl-double v0, v5, v15

    if-ltz v0, :cond_2a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v7, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    aget v0, v7, v0

    float-to-double v7, v0

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_2a

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v5, "nativeDataUpdate"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdate(I)I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_10
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_14

    :catch_10
    move-exception v0

    :try_start_24
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V

    :cond_2a
    :goto_14
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    :cond_2b
    :goto_15
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v6, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    if-lt v0, v6, :cond_30

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-eq v0, v13, :cond_2e

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-eq v0, v4, :cond_2e

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v12, :cond_2c

    goto/16 :goto_17

    :cond_2c
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v11, :cond_30

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSaveSub(I)I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLumSub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLumSub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAvgLum_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mNBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEffAvgLum_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffMaxBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffNBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v14, :cond_2d

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    cmpl-double v4, v4, v15

    if-ltz v4, :cond_2d

    iget-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    iget-object v6, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V9:[F

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    aget v0, v6, v0

    float-to-double v6, v0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_2d

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v4, "nativeDataUpdateSub"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdateSub(I)I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.2f"

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v6, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v5, "/efs/afc1/apply_count"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nativeDataUpdateSub - str : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetENABLE_ABC_SUB(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;->NONE:Lcom/samsung/android/hardware/display/AfterimageCompensationService$AIQE_ABC_VENDOR;

    if-eq v0, v4, :cond_2d

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fputUPDATE_NEEDED_SUB(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_11
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_16

    :catch_11
    move-exception v0

    :try_start_26
    const-string v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    :cond_2d
    :goto_16
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_19

    :cond_2e
    :goto_17
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataSaveSub(I)I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadAvgLumSub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadMaxBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadNBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffAvgLumSub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffMaxBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataReadEffNBDISub()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAvgLum_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mNBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEffAvgLum_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffMaxBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", mEffNBDI_sub : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v5, v5, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v14, :cond_2f

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    cmpl-double v4, v4, v15

    if-ltz v4, :cond_2f

    iget-wide v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    iget-object v6, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    aget v0, v6, v0

    float-to-double v6, v0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_2f

    const-string v0, "AfterimageCompensationService"

    const-string/jumbo v4, "nativeDataUpdateSub"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$smnativeDataUpdateSub(I)I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.2f"

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget v6, v6, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v5, "/efs/afc1/apply_count"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nativeDataUpdateSub - str : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_12
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto :goto_18

    :catch_12
    move-exception v0

    :try_start_28
    const-string v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    :cond_2f
    :goto_18
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    :cond_30
    :goto_19
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    if-eqz v0, :cond_0

    :try_start_29
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_13
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :try_start_2a
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    :try_start_2b
    throw v0
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :catch_13
    :try_start_2c
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mNormalValid:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto/16 :goto_0

    :cond_31
    const-string v0, "AfterimageCompensationService"

    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1a
    const-string v3, "AfcThread is Terminated - 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    goto :goto_1c

    :goto_1b
    :try_start_2d
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->-$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :cond_32
    const-string v0, "AfterimageCompensationService"

    iget-object v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1a

    :goto_1c
    return-void

    :goto_1d
    const-string v3, "AfterimageCompensationService"

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "AfcThread is Terminated - 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    throw v0
.end method
