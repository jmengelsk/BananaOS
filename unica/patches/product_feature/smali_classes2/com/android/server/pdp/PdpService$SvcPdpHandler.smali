.class public final Lcom/android/server/pdp/PdpService$SvcPdpHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    const-string/jumbo v0, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST >"

    const-string/jumbo v2, "PdpService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.pdp.last_job"

    const-string/jumbo v3, "XXXX"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "ro.boot.carrierid"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sys.pdp.toasted"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    const-string/jumbo v8, "XAC"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string/jumbo v9, "XAU"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "toasted"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v12, v11, 0x1

    const-string/jumbo v13, "[PDP] "

    const-string v14, " : "

    invoke-static {v13, v0, v14, v4, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[PDP] pdpInfoChecked : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[PDP] pdpCarrierIsXAC : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[PDP] pdpCarrierIsXAU : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[PDP] pdpToastChecked : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_225

    if-nez v3, :cond_225

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "[PDP] Prepare Toast"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "[PDP]\nrestore : narrow success\n\n [ ! ]\n size issue"

    const-string/jumbo v4, "restore_narrow_suc"

    const-string/jumbo v5, "restore_done"

    const-string/jumbo v6, "restore_fail"

    const-string/jumbo v7, "remove-bkup"

    const-string/jumbo v10, "backup_narrow_suc"

    const-string/jumbo v11, "backup_done"

    const-string/jumbo v12, "backup_fail_etc"

    const-string/jumbo v13, "backup_fail_cache"

    const-string/jumbo v14, "backup_fail_BFNE"

    const-string/jumbo v15, "setupwizard"

    const-string/jumbo v1, "backup_fail_suw"

    move/from16 v16, v8

    move-object/from16 v8, p0

    iget-object v8, v8, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    if-nez v16, :cond_189

    if-eqz v9, :cond_de

    goto/16 :goto_189

    :cond_de
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x5

    if-nez v1, :cond_181

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    goto/16 :goto_181

    :cond_ed
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    const-string/jumbo v0, "[PDP]\nback-up : fail\nNo backup file"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_fb
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    const-string/jumbo v0, "[PDP]\nback-up : fail\n/c partition size"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_109
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    const-string/jumbo v0, "[PDP]\nback-up : fail\n ETC"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_117
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    const-string/jumbo v0, "[PDP]\nback-up : success"

    const/4 v1, 0x3

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_126
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    const-string/jumbo v0, "[PDP]\nback-up : NRW success\n"

    const/16 v1, 0x9

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_136
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    const-string/jumbo v0, "[PDP]\ndelete the back-up files : done"

    const/16 v1, 0x11

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_146
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x56

    if-eqz v1, :cond_156

    const-string/jumbo v0, "[PDP]\nrestore : fail\nPlease download a userdata.img file again."

    invoke-virtual {v8, v6, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_156
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_164

    const-string/jumbo v0, "[PDP]\nrestore : success"

    invoke-virtual {v8, v6, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_164
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    invoke-virtual {v8, v6, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_16f
    const-string/jumbo v1, "detect-bkup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string/jumbo v0, "[PDP]\nback-up files are detected"

    const/4 v1, 0x1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_181
    :goto_181
    const-string/jumbo v0, "[PDP]\nback-up : fail\nsetup-wizard [ FINISH ]"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_189
    :goto_189
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21e

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197

    goto/16 :goto_21e

    :cond_197
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    const-string/jumbo v0, "[PDP]\n system backup: on\n manual backup: NG [file not exist]"

    const/4 v1, 0x1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_1a6
    const/4 v1, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b5

    const-string/jumbo v0, "[PDP]\n system backup: on\n manual backup: NG [/c size]"

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto/16 :goto_22b

    :cond_1b5
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_1c3

    const-string/jumbo v0, "[PDP]\n system backup: on\n manual backup: NG ETC"

    invoke-virtual {v8, v12, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto :goto_22b

    :cond_1c3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const-string/jumbo v0, "[PDP]\n system backup: on\n manual backup: done"

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto :goto_22b

    :cond_1d0
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1dd

    const-string/jumbo v0, "[PDP]\n system backup: on\n manual backup: [!] narrow success"

    invoke-virtual {v8, v12, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto :goto_22b

    :cond_1dd
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ea

    const-string/jumbo v0, "[PDP]\n system backup: on\n manual backup cancel: done"

    invoke-virtual {v8, v1, v0}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto :goto_22b

    :cond_1ea
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    const-string/jumbo v0, "[PDP] restore-fail toast is not allowed"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22b

    :cond_1f7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_204

    const-string/jumbo v0, "[PDP] restore-done toast is not allowed"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22b

    :cond_204
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20e

    invoke-virtual {v8, v12, v3}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(ILjava/lang/String;)V

    goto :goto_22b

    :cond_20e
    const-string/jumbo v1, "detect-bkup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string/jumbo v0, "[PDP] detect-backup toast is not allowed"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22b

    :cond_21e
    :goto_21e
    const-string/jumbo v0, "[PDP] backup-fail toast is not allowed"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22b

    :cond_225
    const-string/jumbo v0, "[PDP] Already Toasted"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22b
    :goto_22b
    const-string/jumbo v0, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST <"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
