.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/policy/WindowManagerPolicy;

.field public final synthetic f$5:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

.field public final synthetic f$7:Ljava/util/function/Supplier;

.field public final synthetic f$8:Ljava/util/function/Supplier;

.field public final synthetic f$9:Lcom/android/server/wm/AppCompatConfiguration;


# direct methods
.method public synthetic constructor <init>([Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$0:[Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$2:Lcom/android/server/input/InputManagerService;

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p6, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p7, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iput-object p8, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$7:Ljava/util/function/Supplier;

    iput-object p9, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$8:Ljava/util/function/Supplier;

    iput-object p10, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$9:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$0:[Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$1:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$2:Lcom/android/server/input/InputManagerService;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$3:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$7:Ljava/util/function/Supplier;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$8:Ljava/util/function/Supplier;

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$9:Lcom/android/server/wm/AppCompatConfiguration;

    new-instance v1, Lcom/android/server/wm/WindowManagerService;

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatConfiguration;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-void
.end method
