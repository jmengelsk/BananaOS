.class public final Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBinderService:Landroid/app/INotificationManager;

.field public final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_81

    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "file://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_16
    const-string/jumbo v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string/jumbo v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string/jumbo v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string/jumbo v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string/jumbo v0, "android.resource:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_83

    :cond_44
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_62

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "drawable"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_81

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_62
    const-string/jumbo p0, "data:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_81

    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_81
    :goto_81
    const/4 p0, 0x0

    return-object p0

    :cond_83
    :goto_83
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "service"

    const-string/jumbo v4, "broadcast"

    iget-object v8, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v12, Landroid/app/Notification$Builder;

    const-string/jumbo v13, "shell_cmd"

    invoke-direct {v12, v11, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x0

    :goto_27
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    if-eqz v6, :cond_485

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_562

    move-object/from16 v22, v13

    goto/16 :goto_1d6

    :sswitch_3b
    move-object/from16 v22, v13

    const-string/jumbo v13, "large-icon"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x9

    goto/16 :goto_1d8

    :sswitch_4a
    move-object/from16 v22, v13

    const-string v13, "--verbose"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/4 v6, 0x1

    goto/16 :goto_1d8

    :sswitch_57
    move-object/from16 v22, v13

    const-string v13, "--line"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x18

    goto/16 :goto_1d8

    :sswitch_65
    move-object/from16 v22, v13

    const-string v13, "--icon"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0xb

    goto/16 :goto_1d8

    :sswitch_73
    move-object/from16 v22, v13

    const-string v13, "--help"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x1c

    goto/16 :goto_1d8

    :sswitch_81
    move-object/from16 v22, v13

    const-string v13, "--bigtext"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x15

    goto/16 :goto_1d8

    :sswitch_8f
    move-object/from16 v22, v13

    const-string v13, "--bigText"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x14

    goto/16 :goto_1d8

    :sswitch_9d
    move-object/from16 v22, v13

    const-string v13, "--largeicon"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/4 v6, 0x7

    goto/16 :goto_1d8

    :sswitch_aa
    move-object/from16 v22, v13

    const-string v13, "--intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x10

    goto/16 :goto_1d8

    :sswitch_b8
    move-object/from16 v22, v13

    const-string v13, "--picture"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x17

    goto/16 :goto_1d8

    :sswitch_c6
    move-object/from16 v22, v13

    const-string/jumbo v13, "largeicon"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x8

    goto/16 :goto_1d8

    :sswitch_d5
    move-object/from16 v22, v13

    const-string v13, "--content-intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0xe

    goto/16 :goto_1d8

    :sswitch_e3
    move-object/from16 v22, v13

    const-string v13, "--big-text"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x16

    goto/16 :goto_1d8

    :sswitch_f1
    move-object/from16 v22, v13

    const-string/jumbo v13, "title"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/4 v6, 0x4

    goto/16 :goto_1d8

    :sswitch_ff
    move-object/from16 v22, v13

    const-string v13, "--wtf"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x1d

    goto/16 :goto_1d8

    :sswitch_10d
    move-object/from16 v22, v13

    const-string/jumbo v13, "icon"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0xc

    goto/16 :goto_1d8

    :sswitch_11c
    move-object/from16 v22, v13

    const-string v13, "-v"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    move/from16 v6, v16

    goto/16 :goto_1d8

    :sswitch_12a
    move-object/from16 v22, v13

    const-string v13, "-t"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/4 v6, 0x2

    goto/16 :goto_1d8

    :sswitch_137
    move-object/from16 v22, v13

    const-string v13, "-i"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0xa

    goto/16 :goto_1d8

    :sswitch_145
    move-object/from16 v22, v13

    const-string v13, "-h"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x1b

    goto/16 :goto_1d8

    :sswitch_153
    move-object/from16 v22, v13

    const-string v13, "-c"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0xd

    goto/16 :goto_1d8

    :sswitch_161
    move-object/from16 v22, v13

    const-string v13, "-S"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x12

    goto/16 :goto_1d8

    :sswitch_16f
    move-object/from16 v22, v13

    const-string v13, "-I"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/4 v6, 0x5

    goto :goto_1d8

    :sswitch_17b
    move-object/from16 v22, v13

    const-string v13, "--large-icon"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/4 v6, 0x6

    goto :goto_1d8

    :sswitch_187
    move-object/from16 v22, v13

    const-string v13, "--conversation"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x1a

    goto :goto_1d8

    :sswitch_194
    move-object/from16 v22, v13

    const-string/jumbo v13, "intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x11

    goto :goto_1d8

    :sswitch_1a2
    move-object/from16 v22, v13

    const-string/jumbo v13, "content-intent"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0xf

    goto :goto_1d8

    :sswitch_1b0
    move-object/from16 v22, v13

    const-string v13, "--title"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/4 v6, 0x3

    goto :goto_1d8

    :sswitch_1bc
    move-object/from16 v22, v13

    const-string v13, "--style"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x13

    goto :goto_1d8

    :sswitch_1c9
    move-object/from16 v22, v13

    const-string v13, "--message"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0x19

    goto :goto_1d8

    :cond_1d6
    :goto_1d6
    move/from16 v6, v17

    :goto_1d8
    packed-switch v6, :pswitch_data_5dc

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_1df  #0x1a
    if-eqz v15, :cond_1f6

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object v3, v12

    move-object/from16 v20, v14

    :goto_1eb
    move-object v7, v15

    move/from16 v6, v16

    const/16 v18, 0x0

    const/16 v21, 0x2

    :goto_1f2
    const/16 v23, 0x1

    goto/16 :goto_46e

    :cond_1f6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--conversation requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1fe  #0x19
    if-eqz v15, :cond_24d

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const/4 v13, 0x2

    invoke-virtual {v6, v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v13, 0x1

    if-le v7, v13, :cond_21e

    aget-object v7, v6, v13

    move-object/from16 v20, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    aget-object v6, v6, v16

    invoke-virtual {v15, v7, v13, v14, v6}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object v3, v12

    goto :goto_1eb

    :cond_21e
    move-object/from16 v20, v14

    aget-object v6, v6, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "Them"

    filled-new-array {v7, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v21, 0x2

    rem-int/lit8 v7, v7, 0x2

    aget-object v3, v3, v7

    invoke-virtual {v15, v6, v13, v14, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :goto_246
    move-object v3, v12

    move-object v7, v15

    move/from16 v6, v16

    const/16 v18, 0x0

    goto :goto_1f2

    :cond_24d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--message requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_255  #0x18
    move-object/from16 v20, v14

    const/16 v21, 0x2

    if-eqz v20, :cond_265

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v20

    invoke-virtual {v6, v3}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_246

    :cond_265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--line requires --style inbox"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26d  #0x17
    move-object v6, v14

    const/16 v21, 0x2

    if-eqz v10, :cond_2aa

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-eqz v7, :cond_29d

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v13, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_290

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    :goto_28d
    move-object/from16 v20, v6

    goto :goto_246

    :cond_290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a bitmap: "

    invoke-static {v1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad picture spec: "

    invoke-static {v1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--picture requires --style bigpicture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2b2  #0x14, 0x15, 0x16
    move-object v6, v14

    const/16 v21, 0x2

    if-eqz v9, :cond_2bf

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_28d

    :cond_2bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--bigtext requires --style bigtext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c7  #0x12, 0x13
    move-object v6, v14

    const/16 v21, 0x2

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_616

    :goto_2dc
    move/from16 v13, v17

    goto :goto_31c

    :sswitch_2df
    const-string/jumbo v7, "media"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e9

    goto :goto_2dc

    :cond_2e9
    const/4 v13, 0x4

    goto :goto_31c

    :sswitch_2eb
    const-string/jumbo v7, "inbox"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f5

    goto :goto_2dc

    :cond_2f5
    const/4 v13, 0x3

    goto :goto_31c

    :sswitch_2f7
    const-string/jumbo v7, "bigpicture"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_301

    goto :goto_2dc

    :cond_301
    move/from16 v13, v21

    goto :goto_31c

    :sswitch_304
    const-string/jumbo v7, "bigtext"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30e

    goto :goto_2dc

    :cond_30e
    const/4 v13, 0x1

    goto :goto_31c

    :sswitch_310
    const-string/jumbo v7, "messaging"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31a

    goto :goto_2dc

    :cond_31a
    move/from16 v13, v16

    :goto_31c
    packed-switch v13, :pswitch_data_62c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unrecognized notification style: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_32c  #0x4
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_334
    move-object v14, v6

    goto :goto_37e

    :pswitch_336  #0x3
    new-instance v14, Landroid/app/Notification$InboxStyle;

    invoke-direct {v14}, Landroid/app/Notification$InboxStyle;-><init>()V

    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_37e

    :pswitch_33f  #0x2
    new-instance v10, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_334

    :pswitch_348  #0x1
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_334

    :pswitch_351  #0x0
    const-string v3, "--user"

    invoke-virtual {v0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_365

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_368

    :cond_365
    const-string/jumbo v3, "You"

    :goto_368
    new-instance v15, Landroid/app/Notification$MessagingStyle;

    new-instance v7, Landroid/app/Person$Builder;

    invoke-direct {v7}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v7, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    invoke-virtual {v12, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_334

    :goto_37e
    move-object v3, v12

    move/from16 v6, v16

    const/16 v18, 0x0

    const/16 v23, 0x1

    goto/16 :goto_47e

    :pswitch_387  #0xd, 0xe, 0xf, 0x10, 0x11
    move-object v6, v14

    const/16 v21, 0x2

    invoke-virtual {v0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_63a

    :goto_398
    move/from16 v13, v17

    goto :goto_3ba

    :sswitch_39b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a2

    goto :goto_398

    :cond_3a2
    move/from16 v13, v21

    goto :goto_3ba

    :sswitch_3a5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3ac

    goto :goto_398

    :cond_3ac
    const/4 v13, 0x1

    goto :goto_3ba

    :sswitch_3ae
    const-string/jumbo v7, "activity"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b8

    goto :goto_398

    :cond_3b8
    move/from16 v13, v16

    :goto_3ba
    packed-switch v13, :pswitch_data_648

    const/4 v3, 0x0

    :goto_3be
    const/4 v7, 0x0

    goto :goto_3c5

    :pswitch_3c0  #0x0, 0x1, 0x2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    goto :goto_3be

    :goto_3c5
    invoke-static {v0, v7}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_3ec

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "xyz:"

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3ee

    :cond_3ec
    move-object/from16 v20, v6

    :goto_3ee
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v7, 0xc000000

    if-eqz v6, :cond_407

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move/from16 v6, v16

    invoke-static {v11, v6, v13, v7, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_3fe
    move-object v7, v12

    move-object v12, v3

    move-object v3, v7

    move-object v7, v15

    const/16 v18, 0x0

    const/16 v23, 0x1

    goto :goto_424

    :cond_407
    move/from16 v6, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_414

    invoke-static {v11, v6, v13, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_3fe

    :cond_414
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v12

    const/4 v12, 0x0

    const/high16 v14, 0xc000000

    move-object v7, v15

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x1

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    :goto_424
    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_46e

    :pswitch_428  #0xa, 0xb, 0xc
    move-object/from16 v20, v14

    move/from16 v6, v16

    const/16 v23, 0x1

    move v14, v6

    :goto_42f
    move-object v3, v12

    move-object v7, v15

    const/16 v18, 0x0

    const/16 v21, 0x2

    goto :goto_43f

    :pswitch_436  #0x5, 0x6, 0x7, 0x8, 0x9
    move-object/from16 v20, v14

    move/from16 v6, v16

    const/16 v23, 0x1

    move/from16 v14, v23

    goto :goto_42f

    :goto_43f
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v13

    if-nez v13, :cond_450

    const-string/jumbo v0, "error: invalid icon: "

    invoke-static {v1, v0, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_450
    if-eqz v14, :cond_456

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_46e

    :cond_456
    move-object v15, v7

    move-object v5, v13

    :goto_458
    move-object/from16 v14, v20

    goto :goto_47e

    :pswitch_45b  #0x2, 0x3, 0x4
    move-object v3, v12

    move-object/from16 v20, v14

    move-object v7, v15

    move/from16 v6, v16

    const/16 v18, 0x0

    const/16 v21, 0x2

    const/16 v23, 0x1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_46e
    move-object v15, v7

    goto :goto_458

    :pswitch_470  #0x0, 0x1
    move-object v3, v12

    move-object/from16 v20, v14

    move-object v7, v15

    move/from16 v6, v16

    const/16 v18, 0x0

    const/16 v21, 0x2

    const/16 v23, 0x1

    move/from16 v19, v23

    :goto_47e
    move-object v12, v3

    move/from16 v16, v6

    move-object/from16 v13, v22

    goto/16 :goto_27

    :cond_485
    move-object v3, v12

    move-object v9, v13

    move/from16 v6, v16

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_55e

    if-nez v4, :cond_497

    goto/16 :goto_55e

    :cond_497
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-nez v5, :cond_4a3

    const v4, 0x1080077

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_4a6

    :cond_4a3
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :goto_4a6
    new-instance v4, Landroid/app/NotificationChannel;

    const-string/jumbo v5, "Shell command"

    const/4 v10, 0x3

    invoke-direct {v4, v9, v5, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v5, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object/from16 v4, p2

    invoke-interface {v5, v4, v7}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "created channel: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v7, v4, v8, v4, v9}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "NotificationService"

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "posting:\n  "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "posting: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "NotificationManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    move/from16 v16, v6

    const/16 v6, 0x7e4

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v4, p2

    move-object/from16 v3, p2

    move/from16 v9, v16

    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    if-eqz v19, :cond_55d

    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v6, 0x7e4

    invoke-virtual {v2, v6, v4, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    :goto_52b
    add-int/lit8 v4, v10, -0x1

    if-lez v10, :cond_549

    if-eqz v2, :cond_532

    goto :goto_549

    :cond_532
    :try_start_532
    const-string/jumbo v2, "waiting for notification to post..."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53d
    .catch Ljava/lang/InterruptedException; {:try_start_532 .. :try_end_53d} :catch_53d

    :catch_53d
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v2, v6, v7, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move v10, v4

    goto :goto_52b

    :cond_549
    :goto_549
    if-nez v2, :cond_552

    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_55d

    :cond_552
    const-string/jumbo v0, "posted: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v2, v1, v0, v9}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_55d
    :goto_55d
    return-void

    :cond_55e
    :goto_55e
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :sswitch_data_562
    .sparse-switch
        -0x74789999 -> :sswitch_1c9
        -0x603263ef -> :sswitch_1bc
        -0x60295f48 -> :sswitch_1b0
        -0x4821dd90 -> :sswitch_1a2
        -0x468ec964 -> :sswitch_194
        -0x32dd8ddd -> :sswitch_187
        -0x2bc1295 -> :sswitch_17b
        0x5bc -> :sswitch_16f
        0x5c6 -> :sswitch_161
        0x5d6 -> :sswitch_153
        0x5db -> :sswitch_145
        0x5dc -> :sswitch_137
        0x5e7 -> :sswitch_12a
        0x5e9 -> :sswitch_11c
        0x313c79 -> :sswitch_10d
        0x2906389 -> :sswitch_ff
        0x6942258 -> :sswitch_f1
        0x2a056f7a -> :sswitch_e3
        0x2a13d010 -> :sswitch_d5
        0x2d3ae234 -> :sswitch_c6
        0x302cc35e -> :sswitch_b8
        0x487e843c -> :sswitch_aa
        0x4a573094 -> :sswitch_9d
        0x4bbf1cad -> :sswitch_8f
        0x4bcda88d -> :sswitch_81
        0x4f7504e1 -> :sswitch_73
        0x4f757219 -> :sswitch_65
        0x4f76e594 -> :sswitch_57
        0x6789dfe2 -> :sswitch_4a
        0x76d66fcb -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_5dc
    .packed-switch 0x0
        :pswitch_470  #00000000
        :pswitch_470  #00000001
        :pswitch_45b  #00000002
        :pswitch_45b  #00000003
        :pswitch_45b  #00000004
        :pswitch_436  #00000005
        :pswitch_436  #00000006
        :pswitch_436  #00000007
        :pswitch_436  #00000008
        :pswitch_436  #00000009
        :pswitch_428  #0000000a
        :pswitch_428  #0000000b
        :pswitch_428  #0000000c
        :pswitch_387  #0000000d
        :pswitch_387  #0000000e
        :pswitch_387  #0000000f
        :pswitch_387  #00000010
        :pswitch_387  #00000011
        :pswitch_2c7  #00000012
        :pswitch_2c7  #00000013
        :pswitch_2b2  #00000014
        :pswitch_2b2  #00000015
        :pswitch_2b2  #00000016
        :pswitch_26d  #00000017
        :pswitch_255  #00000018
        :pswitch_1fe  #00000019
        :pswitch_1df  #0000001a
    .end packed-switch

    :sswitch_data_616
    .sparse-switch
        -0x55d4c8fc -> :sswitch_310
        -0x6cebdd3 -> :sswitch_304
        -0x2a7c002 -> :sswitch_2f7
        0x5fb2286 -> :sswitch_2eb
        0x62f6fe4 -> :sswitch_2df
    .end sparse-switch

    :pswitch_data_62c
    .packed-switch 0x0
        :pswitch_351  #00000000
        :pswitch_348  #00000001
        :pswitch_33f  #00000002
        :pswitch_336  #00000003
        :pswitch_32c  #00000004
    .end packed-switch

    :sswitch_data_63a
    .sparse-switch
        -0x62b40cf1 -> :sswitch_3ae
        -0x607e173f -> :sswitch_3a5
        0x7643c6b5 -> :sswitch_39b
    .end sparse-switch

    :pswitch_data_648
    .packed-switch 0x0
        :pswitch_3c0  #00000000
        :pswitch_3c0  #00000001
        :pswitch_3c0  #00000002
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "error: no active notification matching key: "

    const-string/jumbo v4, "error: no snoozed otification matching key: "

    const-string/jumbo v5, "unsnoozing: "

    const-string/jumbo v6, "error: invalid value for --"

    if-nez v2, :cond_17

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string/jumbo v10, "NotifShellCmd"

    const/4 v12, 0x0

    if-nez v7, :cond_2e

    :try_start_25
    const-string/jumbo v0, "root"

    goto :goto_3d

    :catchall_29
    move-exception v0

    goto/16 :goto_694

    :catch_2c
    move-exception v0

    goto :goto_41

    :cond_2e
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    array-length v13, v0

    if-lez v13, :cond_3c

    aget-object v0, v0, v12
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3b} :catch_2c
    .catchall {:try_start_25 .. :try_end_3b} :catchall_29

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4b

    :goto_41
    :try_start_41
    const-string/jumbo v13, "failed to get caller pkg"

    invoke-static {v10, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_29

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    :goto_4b
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    if-eqz v7, :cond_88

    const/16 v9, 0x7d0

    if-ne v7, v9, :cond_56

    goto :goto_88

    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "error: permission denied: callingUid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingPackage="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0xff

    return v0

    :cond_88
    :goto_88
    const/16 v9, 0x2d

    const/16 v13, 0x5f

    :try_start_8c
    invoke-virtual {v2, v9, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v12, 0x2

    const/16 v17, -0x1

    sparse-switch v13, :sswitch_data_698

    goto/16 :goto_192

    :sswitch_9c
    const-string/jumbo v13, "allow_assistant"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x5

    goto/16 :goto_194

    :catch_a8
    move-exception v0

    goto/16 :goto_675

    :sswitch_ab
    const-string/jumbo v13, "set_dnd"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x0

    goto/16 :goto_194

    :sswitch_b7
    const-string/jumbo v13, "redact_otp_from_untrusted_listeners"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0x13

    goto/16 :goto_194

    :sswitch_c4
    const-string/jumbo v13, "disallow_listener"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x4

    goto/16 :goto_194

    :sswitch_d0
    const-string/jumbo v13, "set_exempt_th_force_grouping"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0x12

    goto/16 :goto_194

    :sswitch_dd
    const-string/jumbo v13, "reset_assistant_user_set"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x7

    goto/16 :goto_194

    :sswitch_e9
    const-string/jumbo v13, "allow_dnd"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x1

    goto/16 :goto_194

    :sswitch_f5
    const-string/jumbo v13, "set_bubbles"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0x9

    goto/16 :goto_194

    :sswitch_102
    const-string/jumbo v13, "post"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0xb

    goto/16 :goto_194

    :sswitch_10f
    const-string/jumbo v13, "list"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0xd

    goto/16 :goto_194

    :sswitch_11c
    const-string/jumbo v13, "get"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0xe

    goto/16 :goto_194

    :sswitch_129
    const-string/jumbo v13, "unsnooze"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0x10

    goto :goto_194

    :sswitch_135
    const-string/jumbo v13, "get_approved_assistant"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0x8

    goto :goto_194

    :sswitch_141
    const-string/jumbo v13, "disallow_dnd"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    move v9, v12

    goto :goto_194

    :sswitch_14c
    const-string/jumbo v13, "allow_listener"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x3

    goto :goto_194

    :sswitch_157
    const-string/jumbo v13, "snooze"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0x11

    goto :goto_194

    :sswitch_163
    const-string/jumbo v13, "notify"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0xc

    goto :goto_194

    :sswitch_16f
    const-string/jumbo v13, "disallow_assistant"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/4 v9, 0x6

    goto :goto_194

    :sswitch_17a
    const-string/jumbo v13, "set_bubbles_channel"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    const/16 v9, 0xa

    goto :goto_194

    :sswitch_186
    const-string/jumbo v13, "snoozed"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_18d} :catch_a8

    if-eqz v9, :cond_192

    const/16 v9, 0xf

    goto :goto_194

    :cond_192
    :goto_192
    move/from16 v9, v17

    :goto_194
    const-string v13, "Invalid listener - must be a ComponentName"

    const-string v11, "Invalid assistant - must be a ComponentName"

    const-string v15, "1"

    const-string/jumbo v14, "true"

    packed-switch v9, :pswitch_data_6ea

    :try_start_1a0
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_1a5  #0x13
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b8

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    const/4 v14, 0x0

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    const/4 v14, 0x1

    :goto_1b9
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "redact_otp_notifications_from_untrusted_listeners"

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_672

    :pswitch_1cb  #0x12
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1de

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    goto :goto_1de

    :cond_1dc
    const/4 v0, 0x0

    goto :goto_1df

    :cond_1de
    :goto_1de
    const/4 v0, 0x1

    :goto_1df
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v2

    if-eqz v2, :cond_1f0

    if-eqz v0, :cond_1f0

    const/4 v14, 0x1

    goto :goto_1f1

    :cond_1f0
    const/4 v14, 0x0

    :goto_1f1
    iput-boolean v14, v1, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    goto/16 :goto_672

    :pswitch_1f5  #0x11
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1f9} :catch_a8

    const-string/jumbo v2, "help"

    if-nez v0, :cond_200

    move-object v0, v2

    goto :goto_20c

    :cond_200
    :try_start_200
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20c

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_20c
    :goto_20c
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_217

    goto :goto_218

    :cond_217
    move-object v2, v0

    :goto_218
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_716

    goto :goto_262

    :sswitch_220
    const-string/jumbo v0, "context"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    const/4 v0, 0x0

    goto :goto_264

    :sswitch_22b
    const-string/jumbo v0, "criterion"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    move v0, v12

    goto :goto_264

    :sswitch_236
    const-string/jumbo v0, "until"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    const/4 v0, 0x3

    goto :goto_264

    :sswitch_241
    const-string/jumbo v0, "for"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    const/4 v0, 0x4

    goto :goto_264

    :sswitch_24c
    const-string/jumbo v0, "condition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    const/4 v0, 0x1

    goto :goto_264

    :sswitch_257
    const-string/jumbo v0, "duration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    const/4 v0, 0x5

    goto :goto_264

    :cond_262
    :goto_262
    move/from16 v0, v17

    :goto_264
    const-wide/16 v13, 0x0

    if-eqz v0, :cond_286

    const/4 v5, 0x1

    if-eq v0, v5, :cond_286

    if-eq v0, v12, :cond_286

    const/4 v5, 0x3

    if-eq v0, v5, :cond_280

    const/4 v5, 0x4

    if-eq v0, v5, :cond_280

    const/4 v5, 0x5

    if-eq v0, v5, :cond_280

    const-string/jumbo v0, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_27c
    const/16 v18, 0x1

    goto/16 :goto_443

    :cond_280
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v5, 0x0

    goto :goto_288

    :cond_286
    move-object v5, v3

    move-wide v11, v13

    :goto_288
    cmp-long v7, v11, v13

    if-gtz v7, :cond_2a7

    if-eqz v5, :cond_28f

    goto :goto_2a7

    :cond_28f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27c

    :cond_2a7
    :goto_2a7
    new-instance v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService;-><init>()V

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    const/4 v1, 0x0

    :goto_2cb
    const/16 v3, 0x14

    if-ge v1, v3, :cond_36b

    iget-boolean v0, v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    const-wide/16 v13, 0x64

    if-eqz v0, :cond_35d

    const-string v0, "Bound Shell NLS"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_2f8

    const-string/jumbo v0, "snoozing <%s> until time: %s"

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v11

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v11, v12}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    goto :goto_318

    :cond_2f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snoozing <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> until criterion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    :goto_318
    const/4 v1, 0x0

    :goto_319
    if-ge v1, v3, :cond_33e

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_321
    if-ge v6, v5, :cond_333

    aget-object v7, v0, v6

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_32d
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_32d} :catch_a8

    if-eqz v7, :cond_330

    goto :goto_33e

    :cond_330
    add-int/lit8 v6, v6, 0x1

    goto :goto_321

    :cond_333
    :try_start_333
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_336
    .catch Ljava/lang/InterruptedException; {:try_start_333 .. :try_end_336} :catch_337
    .catch Ljava/lang/Exception; {:try_start_333 .. :try_end_336} :catch_a8

    goto :goto_33b

    :catch_337
    move-exception v0

    :try_start_338
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_33b
    add-int/lit8 v1, v1, 0x1

    goto :goto_319

    :cond_33e
    :goto_33e
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    const/4 v1, 0x0

    const/16 v3, 0xa

    :goto_344
    if-ge v1, v3, :cond_672

    iget-boolean v0, v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-nez v0, :cond_352

    const-string/jumbo v0, "Unbound Shell NLS"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_350} :catch_a8

    goto/16 :goto_672

    :cond_352
    :try_start_352
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_355
    .catch Ljava/lang/InterruptedException; {:try_start_352 .. :try_end_355} :catch_356
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_355} :catch_a8

    goto :goto_35a

    :catch_356
    move-exception v0

    :try_start_357
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_35a
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_35a} :catch_a8

    :goto_35a
    add-int/lit8 v1, v1, 0x1

    goto :goto_344

    :cond_35d
    const/16 v3, 0xa

    :try_start_35f
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_362
    .catch Ljava/lang/InterruptedException; {:try_start_35f .. :try_end_362} :catch_363
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_362} :catch_a8

    goto :goto_367

    :catch_363
    move-exception v0

    :try_start_364
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_367
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2cb

    :cond_36b
    const-string/jumbo v0, "error: could not bind a listener in time"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_27c

    :pswitch_373  #0x10
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v2, "--mute"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_385

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_386

    :cond_385
    const/4 v2, 0x0

    :goto_386
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v6, v3, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_38d} :catch_a8

    :try_start_38d
    iget-object v3, v3, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    monitor-exit v6
    :try_end_396
    .catchall {:try_start_38d .. :try_end_396} :catchall_3c0

    if-eqz v3, :cond_3af

    :try_start_398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_672

    :cond_3af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3be
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3be} :catch_a8

    goto/16 :goto_27c

    :catchall_3c0
    move-exception v0

    :try_start_3c1
    monitor-exit v6
    :try_end_3c2
    .catchall {:try_start_3c1 .. :try_end_3c2} :catchall_3c0

    :try_start_3c2
    throw v0

    :pswitch_3c3  #0xf
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3d2
    if-ge v3, v2, :cond_672

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " snoozed, time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    invoke-virtual {v0, v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " context="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    invoke-virtual {v0, v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d2

    :pswitch_419  #0xe
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_432

    const-string v0, ""

    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto/16 :goto_672

    :cond_432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_27c

    :goto_443
    return v18

    :pswitch_444  #0xd
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_450
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_672

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_450

    :pswitch_460  #0xb, 0xc
    invoke-virtual {v1, v8, v0, v7}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto/16 :goto_672

    :pswitch_465  #0xa
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_487

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_487
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v6, v0, v5, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v2, v3, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto/16 :goto_672

    :pswitch_4a2  #0x9
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x3

    if-gt v2, v5, :cond_4d8

    if-gez v2, :cond_4b4

    goto :goto_4d8

    :cond_4b4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4c6

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_4c6
    iget-object v4, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v3, v2}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    goto/16 :goto_672

    :cond_4d8
    :goto_4d8
    const-string v0, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5aa

    :pswitch_4df  #0x8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f1

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_4f1
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_501

    const-string/jumbo v0, "null"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_672

    :cond_501
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_672

    :pswitch_50a  #0x7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51c

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_51c
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    goto/16 :goto_672

    :pswitch_523  #0x6
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_532

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5aa

    :cond_532
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_544

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_544
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_672

    :pswitch_54c  #0x5
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_55a

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5aa

    :cond_55a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56c

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_56c
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v5, 0x1

    invoke-interface {v1, v0, v2, v5}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_672

    :pswitch_574  #0x4
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_582

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5aa

    :cond_582
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_594

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_594
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v0, v2, v4, v5}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_672

    :pswitch_59d  #0x3
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5ab

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5aa
    return v17

    :cond_5ab
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5bd

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_5bd
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v5, 0x1

    invoke-interface {v1, v0, v2, v5, v5}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_672

    :pswitch_5c5  #0x2
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5db

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_5db
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_672

    :pswitch_5e3  #0x1
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f9

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_5f9
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v5, 0x1

    invoke-interface {v1, v0, v2, v5}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_672

    :pswitch_601  #0x0
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_730

    goto :goto_64f

    :sswitch_60d
    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64f

    const/4 v2, 0x0

    goto :goto_651

    :sswitch_618
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64f

    const/4 v2, 0x5

    goto :goto_651

    :sswitch_623
    const-string/jumbo v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64f

    const/4 v2, 0x4

    goto :goto_651

    :sswitch_62e
    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64f

    const/4 v2, 0x1

    goto :goto_651

    :sswitch_639
    const-string/jumbo v3, "priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64f

    move v2, v12

    goto :goto_651

    :sswitch_644
    const-string/jumbo v3, "alarms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64f

    const/4 v2, 0x3

    goto :goto_651

    :cond_64f
    :goto_64f
    move/from16 v2, v17

    :goto_651
    if-eqz v2, :cond_66a

    const/4 v5, 0x1

    if-eq v2, v5, :cond_66a

    if-eq v2, v12, :cond_668

    const/4 v5, 0x3

    if-eq v2, v5, :cond_665

    const/4 v5, 0x4

    if-eq v2, v5, :cond_663

    const/4 v5, 0x5

    if-eq v2, v5, :cond_663

    const/4 v11, 0x0

    goto :goto_66c

    :cond_663
    const/4 v11, 0x1

    goto :goto_66c

    :cond_665
    const/4 v5, 0x4

    :goto_666
    move v11, v5

    goto :goto_66c

    :cond_668
    move v11, v12

    goto :goto_66c

    :cond_66a
    const/4 v5, 0x3

    goto :goto_666

    :goto_66c
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v5, 0x1

    invoke-interface {v1, v0, v11, v5}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V
    :try_end_672
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_672} :catch_a8

    :cond_672
    :goto_672
    const/16 v16, 0x0

    goto :goto_693

    :goto_675
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occurred. Check logcat for details. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "NotificationService"

    const-string v2, "Error running shell command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_672

    :goto_693
    return v16

    :goto_694
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_data_698
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_186
        -0x677a47b2 -> :sswitch_17a
        -0x4f05a8e6 -> :sswitch_16f
        -0x3df868b7 -> :sswitch_163
        -0x3580721a -> :sswitch_157
        -0x19cf0b16 -> :sswitch_14c
        -0x199eb9aa -> :sswitch_141
        -0x18b58921 -> :sswitch_135
        -0xa97a41 -> :sswitch_129
        0x18f56 -> :sswitch_11c
        0x32b09e -> :sswitch_10f
        0x3498a0 -> :sswitch_102
        0xca4be8a -> :sswitch_f5
        0x16318b24 -> :sswitch_e9
        0x28bd431f -> :sswitch_dd
        0x451d09df -> :sswitch_d0
        0x4af068f8 -> :sswitch_c4
        0x608f7f1b -> :sswitch_b7
        0x76556fbd -> :sswitch_ab
        0x7dcb4968 -> :sswitch_9c
    .end sparse-switch

    :pswitch_data_6ea
    .packed-switch 0x0
        :pswitch_601  #00000000
        :pswitch_5e3  #00000001
        :pswitch_5c5  #00000002
        :pswitch_59d  #00000003
        :pswitch_574  #00000004
        :pswitch_54c  #00000005
        :pswitch_523  #00000006
        :pswitch_50a  #00000007
        :pswitch_4df  #00000008
        :pswitch_4a2  #00000009
        :pswitch_465  #0000000a
        :pswitch_460  #0000000b
        :pswitch_460  #0000000c
        :pswitch_444  #0000000d
        :pswitch_419  #0000000e
        :pswitch_3c3  #0000000f
        :pswitch_373  #00000010
        :pswitch_1f5  #00000011
        :pswitch_1cb  #00000012
        :pswitch_1a5  #00000013
    .end packed-switch

    :sswitch_data_716
    .sparse-switch
        -0x76bbb26c -> :sswitch_257
        -0x335692e5 -> :sswitch_24c
        0x18cc9 -> :sswitch_241
        0x6a47f5e -> :sswitch_236
        0x16e20ea1 -> :sswitch_22b
        0x38b735af -> :sswitch_220
    .end sparse-switch

    :sswitch_data_730
    .sparse-switch
        -0x545a2fbe -> :sswitch_644
        -0x4577865c -> :sswitch_639
        0xddf -> :sswitch_62e
        0x179a1 -> :sswitch_623
        0x1ad6f -> :sswitch_618
        0x33af38 -> :sswitch_60d
    .end sparse-switch
.end method

.method public final onHelp()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n  set_exempt_th_force_grouping [true|false]\n  redact_otp_from_untrusted_listeners [true|false]\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
