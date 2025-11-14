.class public final Lcom/android/server/testharness/TestHarnessModeService$1;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$1;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;

    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$1;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-direct {v0, v1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
