.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$8;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$8;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->tryRegister()V

    return-void
.end method
