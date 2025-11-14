.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# direct methods
.method public static getWindowLayerFromTypeLw(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getWindowLayerFromTypeLw(IZZ)I
    .locals 24

    move/from16 v0, p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x24

    return v0

    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/16 v2, 0x63

    if-gt v0, v2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/16 v2, 0x9

    const/4 v3, 0x6

    const/16 v4, 0xa

    const/16 v5, 0x12

    const/16 v6, 0x1a

    const/16 v7, 0xf

    const/16 v8, 0x17

    const/16 v9, 0x19

    const/4 v10, 0x5

    const/16 v11, 0x22

    const/16 v12, 0x1e

    const/16 v13, 0x16

    const/16 v14, 0xc

    const/16 v15, 0x18

    const/16 v16, 0x11

    const/16 v17, 0x1c

    const/16 v18, 0x1b

    const/16 v19, 0x20

    const/16 v20, 0x4

    move/from16 p2, v1

    const/4 v1, -0x1

    const/16 v21, 0x1f

    const/16 v22, 0x15

    const/16 v23, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    const/16 v2, 0xa2b

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa2c

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa2f

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa30

    if-eq v0, v2, :cond_3

    move/from16 v20, v1

    goto :goto_0

    :cond_2
    move/from16 v20, v23

    :cond_3
    :goto_0
    if-lez v20, :cond_5

    move/from16 v1, v20

    goto/16 :goto_1

    :sswitch_0
    move/from16 v1, v19

    goto/16 :goto_1

    :sswitch_1
    move/from16 v1, v18

    goto/16 :goto_1

    :sswitch_2
    move/from16 v1, v17

    goto/16 :goto_1

    :sswitch_3
    move/from16 v1, v16

    goto/16 :goto_1

    :sswitch_4
    move/from16 v1, p2

    goto :goto_1

    :sswitch_5
    move/from16 v1, v21

    goto :goto_1

    :sswitch_6
    move v1, v15

    goto :goto_1

    :sswitch_7
    move v1, v14

    goto :goto_1

    :sswitch_8
    move v1, v13

    goto :goto_1

    :sswitch_9
    move v1, v12

    goto :goto_1

    :sswitch_a
    move v1, v11

    goto :goto_1

    :sswitch_b
    move/from16 v1, v23

    goto :goto_1

    :sswitch_c
    move v1, v10

    goto :goto_1

    :sswitch_d
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_e
    move v1, v9

    goto :goto_1

    :sswitch_f
    move v1, v8

    goto :goto_1

    :sswitch_10
    move v1, v7

    goto :goto_1

    :sswitch_11
    move v1, v6

    goto :goto_1

    :sswitch_12
    move v1, v5

    goto :goto_1

    :sswitch_13
    move v1, v4

    goto :goto_1

    :sswitch_14
    sget-boolean v2, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-eq v2, v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move/from16 v1, v22

    goto :goto_1

    :sswitch_15
    move v1, v3

    :cond_5
    :goto_1
    if-lez v1, :cond_6

    return v1

    :cond_6
    const-string/jumbo v1, "Unknown window type: "

    const-string/jumbo v2, "WindowManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v23

    :pswitch_1
    const/16 v0, 0x10

    return v0

    :pswitch_2
    return v16

    :pswitch_3
    return v19

    :pswitch_4
    const/16 v0, 0xb

    return v0

    :pswitch_5
    return v6

    :pswitch_6
    const/16 v0, 0x14

    return v0

    :pswitch_7
    return v21

    :pswitch_8
    return v17

    :pswitch_9
    const/16 v0, 0x1d

    return v0

    :pswitch_a
    return v9

    :pswitch_b
    return v10

    :pswitch_c
    return v11

    :pswitch_d
    return v13

    :pswitch_e
    return v15

    :pswitch_f
    const/16 v0, 0x23

    return v0

    :pswitch_10
    return v5

    :pswitch_11
    return v12

    :pswitch_12
    const/16 v0, 0x21

    return v0

    :pswitch_13
    return p2

    :pswitch_14
    const/16 v0, 0xe

    return v0

    :pswitch_15
    const/16 v0, 0xd

    return v0

    :pswitch_16
    if-eqz p1, :cond_7

    return v18

    :cond_7
    return v2

    :pswitch_17
    const/16 v0, 0x13

    return v0

    :pswitch_18
    return v3

    :pswitch_19
    const/16 v0, 0x8

    return v0

    :pswitch_1a
    if-eqz p1, :cond_8

    return v8

    :cond_8
    return v4

    :pswitch_1b
    sget-boolean v2, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result v0

    if-eq v0, v1, :cond_9

    return v0

    :cond_9
    :pswitch_1c
    return v22

    :pswitch_1d
    if-eqz p1, :cond_a

    return v14

    :cond_a
    return v2

    :pswitch_1e
    return v23

    :pswitch_1f
    return v20

    :pswitch_20
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1c
        :pswitch_7
        :pswitch_6
        :pswitch_1e
        :pswitch_1e
        :pswitch_5
        :pswitch_1e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x82f -> :sswitch_15
        0x833 -> :sswitch_14
        0x8b1 -> :sswitch_13
        0x8b2 -> :sswitch_12
        0x8b3 -> :sswitch_5
        0x8b4 -> :sswitch_11
        0x8de -> :sswitch_10
        0x8df -> :sswitch_10
        0x8e2 -> :sswitch_f
        0x8e8 -> :sswitch_e
        0x8e9 -> :sswitch_f
        0x961 -> :sswitch_e
        0x962 -> :sswitch_d
        0x963 -> :sswitch_c
        0x965 -> :sswitch_e
        0x966 -> :sswitch_b
        0x967 -> :sswitch_a
        0x968 -> :sswitch_9
        0x96b -> :sswitch_14
        0x96c -> :sswitch_d
        0x96e -> :sswitch_8
        0x96f -> :sswitch_12
        0x97e -> :sswitch_b
        0x97f -> :sswitch_7
        0x988 -> :sswitch_f
        0x989 -> :sswitch_f
        0x98a -> :sswitch_6
        0xa28 -> :sswitch_5
        0xa29 -> :sswitch_11
        0xa2d -> :sswitch_11
        0xa2e -> :sswitch_6
        0xa3a -> :sswitch_7
        0xa3b -> :sswitch_a
        0xa3c -> :sswitch_4
        0xa3d -> :sswitch_10
        0xa3e -> :sswitch_3
        0xa3f -> :sswitch_6
        0xa40 -> :sswitch_7
        0xa46 -> :sswitch_2
        0xa47 -> :sswitch_1
        0xa48 -> :sswitch_b
        0xa49 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 3

    check-cast p0, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    :goto_0
    move-object v1, v0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0
.end method
