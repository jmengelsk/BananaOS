.class public final Lcom/android/server/pm/PackageManagerShellCommand$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    return-void
.end method


# virtual methods
.method public final handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 2

    const-string v0, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    return v1

    :cond_0
    const-string v0, "--brief"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    return v1

    :cond_1
    const-string v0, "--components"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    return v1

    :cond_2
    const-string v0, "--query-flags"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
