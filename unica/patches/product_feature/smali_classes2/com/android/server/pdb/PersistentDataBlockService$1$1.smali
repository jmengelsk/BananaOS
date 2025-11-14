.class public final Lcom/android/server/pdb/PersistentDataBlockService$1$1;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public static hashSecretString(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "ShellCommand"

    const-string v1, "Can\'t happen"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x20

    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "failed"

    const-string/jumbo v3, "succeeded"

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "auto_deactivate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "status"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "set_secret"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "activate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "deactivate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->automaticallyDeactivateFrpIfPossible()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object v2, v3

    :cond_6
    const-string p1, "Automatic deactivation "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    return v0

    :pswitch_2
    const/16 p1, 0x20

    new-array p1, p1, [B

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->hashSecretString(Ljava/lang/String;)[B

    move-result-object p1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Setting FRP secret to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-virtual {v2, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->setFactoryResetProtectionSecret([B)Z

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    return v0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->activateFrp()V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    return v0

    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->hashSecretString(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting to deactivate with: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object v4, v4, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v4, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result p1

    if-eqz p1, :cond_8

    move-object v2, v3

    :cond_8
    const-string p1, "Deactivation "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77042f8c -> :sswitch_4
        -0x62b42b0d -> :sswitch_3
        -0x468ec2d3 -> :sswitch_2
        -0x3532300e -> :sswitch_1
        0x79c03504 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Commands"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "status: Print the FRP state and associated information."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "activate:  Put FRP into \"active\" mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "deactivate <secret>:  Deactivate with a hash of \'secret\'."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "auto_deactivate: Deactivate with the stored secret or the default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "set_secret <secret>:  Set the stored secret to a hash of `secret`"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
