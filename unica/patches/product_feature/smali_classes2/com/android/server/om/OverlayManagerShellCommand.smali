.class public final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TYPE_MAP:Ljava/util/Map;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Lcom/android/server/om/OverlayManagerService$1;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v1, "color"

    const-string/jumbo v3, "string"

    const-string/jumbo v5, "drawable"

    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/om/OverlayManagerShellCommand;->TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/om/OverlayManagerService$1;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    return-void
.end method

.method public static printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V
    .registers 4

    iget v0, p1, Landroid/content/om/OverlayInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    const-string v0, "---"

    goto :goto_15

    :cond_e
    const-string/jumbo v0, "[x]"

    goto :goto_15

    :cond_12
    const-string/jumbo v0, "[ ]"

    :goto_15
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addOverlayValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/server/om/OverlayManagerShellCommand;->TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    const-string v4, "0x"

    if-eqz v1, :cond_20

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_33

    :cond_20
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_33

    :cond_2f
    invoke-static {p3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p3

    :goto_33
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3a

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_3a
    if-gez p3, :cond_53

    const-string/jumbo p3, "r"

    invoke-virtual {p0, p4, p3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const-string p3, ".9.png"

    invoke-virtual {p4, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4f

    invoke-virtual {p1, p2, p0, p5}, Landroid/content/om/FabricatedOverlay;->setNinePatchResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_69

    :cond_4f
    invoke-virtual {p1, p2, p0, p5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_69

    :cond_53
    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_66

    :cond_62
    invoke-static {p4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p0

    :goto_66
    invoke-virtual {p1, p2, p3, p0, p5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    :goto_69
    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_c2

    goto :goto_74

    :sswitch_16
    const-string/jumbo v2, "fabricate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x6

    goto :goto_75

    :catch_21
    move-exception p0

    goto/16 :goto_a4

    :catch_24
    move-exception p0

    goto/16 :goto_ab

    :sswitch_27
    const-string/jumbo v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x2

    goto :goto_75

    :sswitch_32
    const-string/jumbo v2, "partition-order"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x7

    goto :goto_75

    :sswitch_3d
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    move v2, v4

    goto :goto_75

    :sswitch_48
    const-string/jumbo v2, "enable-exclusive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x3

    goto :goto_75

    :sswitch_53
    const-string/jumbo v2, "lookup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x5

    goto :goto_75

    :sswitch_5e
    const-string/jumbo v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    move v2, v3

    goto :goto_75

    :sswitch_69
    const-string/jumbo v2, "set-priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x4

    goto :goto_75

    :cond_74
    :goto_74
    move v2, v1

    :goto_75
    packed-switch v2, :pswitch_data_e4

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_7d  #0x7
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runPartitionOrder()V

    return v4

    :pswitch_81  #0x6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runFabricate()I

    move-result p0

    return p0

    :pswitch_86  #0x5
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runLookup()I

    move-result p0

    return p0

    :pswitch_8b  #0x4
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result p0

    return p0

    :pswitch_90  #0x3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableExclusive()I

    move-result p0

    return p0

    :pswitch_95  #0x2
    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p0

    return p0

    :pswitch_9a  #0x1
    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result p0

    return p0

    :pswitch_9f  #0x0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result p0
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_a3} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_a3} :catch_21

    return p0

    :goto_a4
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    goto :goto_c0

    :goto_ab
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_c0
    return v1

    nop

    :sswitch_data_c2
    .sparse-switch
        -0x5120f151 -> :sswitch_69
        -0x4d6ada7d -> :sswitch_5e
        -0x41645686 -> :sswitch_53
        -0x2f5d012c -> :sswitch_48
        0x32b09e -> :sswitch_3d
        0x43b156ab -> :sswitch_32
        0x639e22e8 -> :sswitch_27
        0x78377fcd -> :sswitch_16
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_9f  #00000000
        :pswitch_9a  #00000001
        :pswitch_95  #00000002
        :pswitch_90  #00000003
        :pswitch_8b  #00000004
        :pswitch_86  #00000005
        :pswitch_81  #00000006
        :pswitch_7d  #00000007
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Overlay manager (overlay) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dump [--verbose] [--user USER_ID] [[FIELD] PACKAGE[:NAME]]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print debugging information about the overlay manager."

    const-string v1, "    With optional parameters PACKAGE and NAME, limit output to the specified"

    const-string v2, "    overlay or target. With optional parameter FIELD, limit output to"

    const-string v3, "    the corresponding SettingsItem field. Field names are all lower case"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    and omit the m prefix, i.e. \'userid\' for SettingsItem.mUserId."

    const-string v1, "  list [--user USER_ID] [PACKAGE[:NAME]]"

    const-string v2, "    Print information about target and overlay packages."

    const-string v3, "    Overlay packages are printed in priority order. With optional"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    parameters PACKAGE and NAME, limit output to the specified overlay or"

    const-string v1, "    target."

    const-string v2, "  enable [--user USER_ID] PACKAGE[:NAME]"

    const-string v3, "    Enable overlay within or owned by PACKAGE with optional unique NAME."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  disable [--user USER_ID] PACKAGE[:NAME]"

    const-string v1, "    Disable overlay within or owned by PACKAGE with optional unique NAME."

    const-string v2, "  enable-exclusive [--user USER_ID] [--category] PACKAGE"

    const-string v3, "    Enable overlay within or owned by PACKAGE and disable all other overlays"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    for its target package. If the --category option is given, only disables"

    const-string v1, "    other overlays in the same category."

    const-string v2, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    const-string v3, "    Change the priority of the overlay to be just higher than"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    the priority of PARENT If PARENT is the special keyword"

    const-string v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    const-string v2, "    If PARENT is the special keyword \'highest\', change priority of"

    const-string v3, "    PACKAGE to the highest priority."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  lookup [--user USER_ID] [--verbose] PACKAGE-TO-LOAD PACKAGE:TYPE/NAME"

    const-string v1, "    Load a package and print the value of a given resource"

    const-string v2, "    applying the current configuration and enabled overlays."

    const-string v3, "    For a more fine-grained alternative, use \'idmap2 lookup\'."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  fabricate [--target-name OVERLAYABLE] --target PACKAGE"

    const-string v1, "            --name NAME [--file FILE] "

    const-string v2, "            PACKAGE:TYPE/NAME ENCODED-TYPE-ID|TYPE-NAME ENCODED-VALUE"

    const-string v3, "    Create an overlay from a single resource. Caller must be root. Example:"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      fabricate --target android --name LighterGray \\"

    const-string v1, "                android:color/lighter_gray 0x1c 0xffeeeeee"

    const-string v2, "  partition-order"

    const-string v3, "    Print the partition order from overlay config and how this order"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    got established, by default or by /product/overlay/partition_order.xml"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runEnableDisable(Z)I
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    new-instance v2, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v2}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    invoke-virtual {v2, v0, p1, v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runEnableExclusive()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_32

    const-string v5, "--category"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v1, "--user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :cond_30
    move v2, v4

    goto :goto_6

    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_40

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerService$1;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_40
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/om/OverlayManagerService$1;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0
.end method

.method public final runFabricate()I
    .registers 16

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    const-string p0, "Error: must be root to fabricate overlays through the shell"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_13
    const/4 v3, 0x0

    const-string v5, ""

    move-object v8, v3

    move-object v14, v8

    move-object v6, v5

    move-object v7, v6

    :goto_1a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_85

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_22c

    goto :goto_5f

    :sswitch_29
    const-string v11, "--target"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    goto :goto_5f

    :cond_32
    const/4 v10, 0x4

    goto :goto_5f

    :sswitch_34
    const-string v11, "--name"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    goto :goto_5f

    :cond_3d
    const/4 v10, 0x3

    goto :goto_5f

    :sswitch_3f
    const-string v11, "--file"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_48

    goto :goto_5f

    :cond_48
    move v10, v0

    goto :goto_5f

    :sswitch_4a
    const-string v11, "--config"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_53

    goto :goto_5f

    :cond_53
    move v10, v4

    goto :goto_5f

    :sswitch_55
    const-string v11, "--target-name"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5e

    goto :goto_5f

    :cond_5e
    move v10, v1

    :goto_5f
    packed-switch v10, :pswitch_data_242

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :pswitch_6c  #0x4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto :goto_1a

    :pswitch_71  #0x3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    :pswitch_76  #0x2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    :pswitch_7b  #0x1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v14

    goto :goto_1a

    :pswitch_80  #0x0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    goto :goto_1a

    :cond_85
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_91

    const-string p0, "Error: Missing required arg \'--name\'"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_91
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9d

    const-string p0, "Error: Missing required arg \'--target\'"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_9d
    if-eqz v8, :cond_ab

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v9

    if-lez v9, :cond_ab

    const-string p0, "Error: When passing --file don\'t pass resource name, type, and value as well"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_ab
    new-instance v10, Landroid/content/om/FabricatedOverlay;

    invoke-direct {v10, v5, v6}, Landroid/content/om/FabricatedOverlay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Landroid/content/om/FabricatedOverlay;->setTargetOverlayable(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.shell"

    invoke-virtual {v10, v2}, Landroid/content/om/FabricatedOverlay;->setOwningPackage(Ljava/lang/String;)V

    if-eqz v8, :cond_200

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d3

    const-string v0, "Error: File does not exist"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_cf
    move-object v7, p0

    move-object v8, v10

    goto/16 :goto_1fd

    :cond_d3
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_df

    const-string v0, "Error: File is unreadable"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cf

    :cond_df
    :try_start_df
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e4} :catch_13f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_df .. :try_end_e4} :catch_13a

    :try_start_e4
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    :goto_e8
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v0, :cond_f1

    if-eq v7, v4, :cond_f1

    goto :goto_e8

    :cond_f1
    const-string/jumbo v7, "overlay"

    invoke-interface {v5, v0, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_f7
    :goto_f7
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_1e2

    if-ne v7, v0, :cond_f7

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_10a
    .catchall {:try_start_e4 .. :try_end_10a} :catchall_1de

    if-nez v8, :cond_12b

    :try_start_10c
    const-string v8, "Error: Unexpected tag: %s at line %d"

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_10c .. :try_end_121} :catchall_125

    move-object v7, p0

    move-object v8, v10

    goto/16 :goto_1d7

    :catchall_125
    move-exception v0

    move-object v7, p0

    move-object p0, v0

    move-object v8, v10

    goto/16 :goto_1ed

    :cond_12b
    :try_start_12b
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->isEmptyElementTag()Z

    move-result v7
    :try_end_12f
    .catchall {:try_start_12b .. :try_end_12f} :catchall_1de

    if-nez v7, :cond_144

    :try_start_131
    const-string v0, "Error: item tag must be empty"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_125

    :goto_136
    :try_start_136
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_cf

    :catch_13a
    move-exception v0

    move-object v7, p0

    move-object v8, v10

    goto/16 :goto_1f6

    :catch_13f
    move-exception v0

    move-object v7, p0

    move-object v8, v10

    goto/16 :goto_1fa

    :cond_144
    :try_start_144
    const-string/jumbo v7, "target"

    invoke-interface {v5, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_14f
    .catchall {:try_start_144 .. :try_end_14f} :catchall_1de

    if-eqz v8, :cond_16a

    :try_start_151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: target name missing at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_169
    .catchall {:try_start_151 .. :try_end_169} :catchall_125

    goto :goto_136

    :cond_16a
    const/16 v8, 0x2f

    :try_start_16c
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8
    :try_end_170
    .catchall {:try_start_16c .. :try_end_170} :catchall_1de

    if-gez v8, :cond_18b

    :try_start_172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: target malformed, missing \'/\' at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18a
    .catchall {:try_start_172 .. :try_end_18a} :catchall_125

    goto :goto_136

    :cond_18b
    :try_start_18b
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v5, v3, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_19a
    .catchall {:try_start_18b .. :try_end_19a} :catchall_1de

    if-eqz v9, :cond_1b5

    :try_start_19c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: value missing at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b4
    .catchall {:try_start_19c .. :try_end_1b4} :catchall_125

    goto :goto_136

    :cond_1b5
    :try_start_1b5
    const-string/jumbo v9, "config"

    invoke-interface {v5, v3, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x3a

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_1d0
    .catchall {:try_start_1b5 .. :try_end_1d0} :catchall_1de

    move-object v7, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, p0

    :try_start_1d4
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/om/OverlayManagerShellCommand;->addOverlayValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d7
    .catchall {:try_start_1d4 .. :try_end_1d7} :catchall_1db

    :goto_1d7
    move-object p0, v7

    move-object v10, v8

    goto/16 :goto_f7

    :catchall_1db
    move-exception v0

    :goto_1dc
    move-object p0, v0

    goto :goto_1ed

    :catchall_1de
    move-exception v0

    move-object v7, p0

    move-object v8, v10

    goto :goto_1dc

    :cond_1e2
    move-object v7, p0

    move-object v8, v10

    :try_start_1e4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e4 .. :try_end_1e7} :catch_1e9

    move v4, v1

    goto :goto_1fd

    :catch_1e9
    move-exception v0

    goto :goto_1f6

    :catch_1eb
    move-exception v0

    goto :goto_1fa

    :goto_1ed
    :try_start_1ed
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1f0
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_1f1

    goto :goto_1f5

    :catchall_1f1
    move-exception v0

    :try_start_1f2
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f5
    throw p0
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f6} :catch_1eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f2 .. :try_end_1f6} :catch_1e9

    :goto_1f6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1fd

    :goto_1fa
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1fd
    if-eqz v4, :cond_218

    return v4

    :cond_200
    move-object v7, p0

    move-object v8, v10

    invoke-virtual {v7}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    const-string p0, " "

    invoke-virtual {v7}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/om/OverlayManagerShellCommand;->addOverlayValue(Landroid/content/om/FabricatedOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_218
    iget-object p0, v7, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    new-instance v0, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    invoke-virtual {v0, v8}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/om/OverlayManagerService$1;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    return v1

    nop

    :sswitch_data_22c
    .sparse-switch
        -0x37c14c59 -> :sswitch_55
        0x3e4cd0e2 -> :sswitch_4a
        0x4f742b1c -> :sswitch_3f
        0x4f77b02b -> :sswitch_34
        0x5a8bbf31 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_80  #00000000
        :pswitch_7b  #00000001
        :pswitch_76  #00000002
        :pswitch_71  #00000003
        :pswitch_6c  #00000004
    .end packed-switch
.end method

.method public final runList()I
    .registers 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, -0x2

    :goto_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b

    const-string v3, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_a

    :cond_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5f

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/om/OverlayManagerService$1;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/om/OverlayManagerService$1;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    if-eqz p0, :cond_9a

    invoke-static {v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    return v4

    :cond_4a
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    move v2, v4

    :goto_52
    if-ge v2, p0, :cond_9a

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    invoke-static {v1, v3}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    add-int/2addr v2, v0

    goto :goto_52

    :cond_5f
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerService$1;->getAllOverlays(I)Ljava/util/Map;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_89
    if-ge v6, v5, :cond_96

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayInfo;

    invoke-static {v1, v7}, Lcom/android/server/om/OverlayManagerShellCommand;->printListOverlay(Ljava/io/PrintWriter;Landroid/content/om/OverlayInfo;)V

    add-int/2addr v6, v0

    goto :goto_89

    :cond_96
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_6f

    :cond_9a
    return v4
.end method

.method public final runLookup()I
    .registers 12

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    move v5, v4

    :goto_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_37

    const-string v7, "--user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    const-string v5, "--verbose"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2c
    move v5, v0

    goto :goto_c

    :cond_2e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_c

    :cond_37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    const-string v8, "(.*?):(.*?)/(.*?)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_55

    const-string p0, "Error: bad resource name, doesn\'t match package:type/name"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_55
    const-string/jumbo v9, "runLookup"

    invoke-static {v3, v9}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser$1(ILjava/lang/String;)I

    move-result v3

    :try_start_5c
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p0, v9, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_6e} :catch_11c

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    :try_start_72
    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_92

    :try_start_75
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0, v7, v6, v4}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v7, v6, v0}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v5, :cond_95

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    :catchall_92
    move-exception p0

    goto/16 :goto_118

    :cond_95
    :goto_95
    invoke-interface {v9, v6}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_b6

    :cond_9f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_75 .. :try_end_b6} :catch_ba
    .catchall {:try_start_75 .. :try_end_b6} :catchall_92

    :goto_b6
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v4

    :catch_ba
    :try_start_ba
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_fa

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    if-eqz v5, :cond_db

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLastResourceResolution()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_db
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move v6, v4

    :goto_e1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_f3

    invoke-virtual {p0, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/2addr v6, v0

    goto :goto_e1

    :cond_f3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_f6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ba .. :try_end_f6} :catch_100
    .catchall {:try_start_ba .. :try_end_f6} :catchall_92

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v4

    :cond_fa
    :try_start_fa
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
    :try_end_100
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_fa .. :try_end_100} :catch_100
    .catchall {:try_start_fa .. :try_end_100} :catchall_92

    :catch_100
    :try_start_100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: failed to get the resource "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_114
    .catchall {:try_start_100 .. :try_end_114} :catchall_92

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    return v0

    :goto_118
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->setResourceResolutionLoggingEnabled(Z)V

    throw p0

    :catch_11c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Error: failed to get resources for package %s for user %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final runPartitionOrder()V
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Partition order (low to high priority): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService$1;->getPartitionOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService$1;->isDefaultPartitionOrder()Z

    move-result p0

    if-eqz p0, :cond_28

    const-string/jumbo p0, "default"

    goto :goto_2a

    :cond_28
    const-string p0, "/product/overlay/partition_order.xml"

    :goto_2a
    const-string v1, "Established by "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetPriority()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "highest"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerService$1;->setHighestPriority(Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_40
    const-string/jumbo v4, "lowest"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerService$1;->setLowestPriority(Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_51
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/om/OverlayManagerService$1;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method
