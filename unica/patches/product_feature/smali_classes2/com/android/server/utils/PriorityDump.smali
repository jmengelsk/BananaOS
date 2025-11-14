.class public abstract Lcom/android/server/utils/PriorityDump;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_9

    invoke-interface {p0, p1, p2, p3, v2}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :cond_9
    array-length v3, p3

    new-array v3, v3, [Ljava/lang/String;

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_10
    array-length v8, p3

    const/4 v9, 0x3

    if-ge v4, v8, :cond_73

    aget-object v8, p3, v4

    const-string v10, "--proto"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    move v7, v1

    goto :goto_71

    :cond_20
    aget-object v8, p3, v4

    const-string v10, "--dump-priority"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    add-int/lit8 v8, v4, 0x1

    array-length v10, p3

    if-ge v8, v10, :cond_71

    aget-object v4, p3, v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_94

    goto :goto_5e

    :sswitch_3d
    const-string v10, "HIGH"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_5e

    :cond_46
    move v6, v0

    goto :goto_5e

    :sswitch_48
    const-string v10, "CRITICAL"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_5e

    :cond_51
    move v6, v1

    goto :goto_5e

    :sswitch_53
    const-string/jumbo v10, "NORMAL"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto :goto_5e

    :cond_5d
    move v6, v2

    :goto_5e
    packed-switch v6, :pswitch_data_a2

    move v6, v2

    goto :goto_68

    :pswitch_63  #0x2
    move v6, v0

    goto :goto_68

    :pswitch_65  #0x1
    move v6, v1

    goto :goto_68

    :pswitch_67  #0x0
    move v6, v9

    :goto_68
    move v4, v8

    goto :goto_71

    :cond_6a
    add-int/lit8 v8, v5, 0x1

    aget-object v9, p3, v4

    aput-object v9, v3, v5

    move v5, v8

    :cond_71
    :goto_71
    add-int/2addr v4, v1

    goto :goto_10

    :cond_73
    array-length p3, p3

    if-ge v5, p3, :cond_7d

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, [Ljava/lang/String;

    :cond_7d
    if-eq v6, v1, :cond_8f

    if-eq v6, v0, :cond_8b

    if-eq v6, v9, :cond_87

    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :cond_87
    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :cond_8b
    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :cond_8f
    invoke-interface {p0, p1, p2, v3, v7}, Lcom/android/server/utils/PriorityDump$PriorityDumper;->dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_94
    .sparse-switch
        -0x76664f19 -> :sswitch_53
        -0x5cfe9861 -> :sswitch_48
        0x21d5a2 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_65  #00000001
        :pswitch_63  #00000002
    .end packed-switch
.end method
