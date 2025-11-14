.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# direct methods
.method public static getWindowLayerFromTypeLw(I)I
    .registers 2

    invoke-static {p0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getWindowLayerFromTypeLw(IZZ)I
    .registers 27

    move/from16 v0, p0

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    const/16 v0, 0x24

    return v0

    :cond_9
    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/16 v2, 0x63

    if-gt v0, v2, :cond_12

    const/4 v0, 0x2

    return v0

    :cond_12
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

    packed-switch v0, :pswitch_data_100

    :pswitch_42  #0x7d4, 0x7de, 0x7e7, 0x7e9, 0x7ec, 0x7ed
    sparse-switch v0, :sswitch_data_158

    const/16 v2, 0xa2b

    if-eq v0, v2, :cond_58

    const/16 v2, 0xa2c

    if-eq v0, v2, :cond_58

    const/16 v2, 0xa2f

    if-eq v0, v2, :cond_5a

    const/16 v2, 0xa30

    if-eq v0, v2, :cond_5a

    move/from16 v20, v1

    goto :goto_5a

    :cond_58
    move/from16 v20, v23

    :cond_5a
    :goto_5a
    if-lez v20, :cond_a7

    move/from16 v1, v20

    goto/16 :goto_a7

    :sswitch_60
    move/from16 v1, v19

    goto/16 :goto_a7

    :sswitch_64
    move/from16 v1, v18

    goto/16 :goto_a7

    :sswitch_68
    move/from16 v1, v17

    goto/16 :goto_a7

    :sswitch_6c
    move/from16 v1, v16

    goto/16 :goto_a7

    :sswitch_70
    move/from16 v1, p2

    goto :goto_a7

    :sswitch_73
    move/from16 v1, v21

    goto :goto_a7

    :sswitch_76
    move v1, v15

    goto :goto_a7

    :sswitch_78
    move v1, v14

    goto :goto_a7

    :sswitch_7a
    move v1, v13

    goto :goto_a7

    :sswitch_7c
    move v1, v12

    goto :goto_a7

    :sswitch_7e
    move v1, v11

    goto :goto_a7

    :sswitch_80
    move/from16 v1, v23

    goto :goto_a7

    :sswitch_83
    move v1, v10

    goto :goto_a7

    :sswitch_85
    const/4 v1, 0x7

    goto :goto_a7

    :sswitch_87
    move v1, v9

    goto :goto_a7

    :sswitch_89
    move v1, v8

    goto :goto_a7

    :sswitch_8b
    move v1, v7

    goto :goto_a7

    :sswitch_8d
    move v1, v6

    goto :goto_a7

    :sswitch_8f
    move v1, v5

    goto :goto_a7

    :sswitch_91
    move v1, v4

    goto :goto_a7

    :sswitch_93
    sget-boolean v2, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v2, :cond_a3

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-eq v2, v1, :cond_a3

    move v1, v2

    goto :goto_a7

    :cond_a3
    move/from16 v1, v22

    goto :goto_a7

    :sswitch_a6
    move v1, v3

    :cond_a7
    :goto_a7
    if-lez v1, :cond_aa

    return v1

    :cond_aa
    const-string/jumbo v1, "Unknown window type: "

    const-string/jumbo v2, "WindowManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v23

    :pswitch_b4  #0x7f9
    const/16 v0, 0x10

    return v0

    :pswitch_b7  #0x7f8
    return v16

    :pswitch_b8  #0x7f7
    return v19

    :pswitch_b9  #0x7f6
    const/16 v0, 0xb

    return v0

    :pswitch_bc  #0x7f4
    return v6

    :pswitch_bd  #0x7f1
    const/16 v0, 0x14

    return v0

    :pswitch_c0  #0x7f0
    return v21

    :pswitch_c1  #0x7eb
    return v17

    :pswitch_c2  #0x7ea
    const/16 v0, 0x1d

    return v0

    :pswitch_c5  #0x7e8
    return v9

    :pswitch_c6  #0x7e6
    return v10

    :pswitch_c7  #0x7e5
    return v11

    :pswitch_c8  #0x7e4
    return v13

    :pswitch_c9  #0x7e3
    return v15

    :pswitch_ca  #0x7e2
    const/16 v0, 0x23

    return v0

    :pswitch_cd  #0x7e1
    return v5

    :pswitch_ce  #0x7e0
    return v12

    :pswitch_cf  #0x7df
    const/16 v0, 0x21

    return v0

    :pswitch_d2  #0x7dd
    return p2

    :pswitch_d3  #0x7dc
    const/16 v0, 0xe

    return v0

    :pswitch_d6  #0x7db
    const/16 v0, 0xd

    return v0

    :pswitch_d9  #0x7da
    if-eqz p1, :cond_dc

    return v18

    :cond_dc
    return v2

    :pswitch_dd  #0x7d9
    const/16 v0, 0x13

    return v0

    :pswitch_e0  #0x7d8
    return v3

    :pswitch_e1  #0x7d7
    const/16 v0, 0x8

    return v0

    :pswitch_e4  #0x7d6
    if-eqz p1, :cond_e7

    return v8

    :cond_e7
    return v4

    :pswitch_e8  #0x7d5
    sget-boolean v2, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v2, :cond_f7

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result v0

    if-eq v0, v1, :cond_f7

    return v0

    :cond_f7
    :pswitch_f7  #0x7ef
    return v22

    :pswitch_f8  #0x7d3
    if-eqz p1, :cond_fb

    return v14

    :cond_fb
    return v2

    :pswitch_fc  #0x7d2, 0x7ee, 0x7f2, 0x7f3, 0x7f5
    return v23

    :pswitch_fd  #0x7d1
    return v20

    :pswitch_fe  #0x7d0
    return v7

    nop

    :pswitch_data_100
    .packed-switch 0x7d0
        :pswitch_fe  #000007d0
        :pswitch_fd  #000007d1
        :pswitch_fc  #000007d2
        :pswitch_f8  #000007d3
        :pswitch_42  #000007d4
        :pswitch_e8  #000007d5
        :pswitch_e4  #000007d6
        :pswitch_e1  #000007d7
        :pswitch_e0  #000007d8
        :pswitch_dd  #000007d9
        :pswitch_d9  #000007da
        :pswitch_d6  #000007db
        :pswitch_d3  #000007dc
        :pswitch_d2  #000007dd
        :pswitch_42  #000007de
        :pswitch_cf  #000007df
        :pswitch_ce  #000007e0
        :pswitch_cd  #000007e1
        :pswitch_ca  #000007e2
        :pswitch_c9  #000007e3
        :pswitch_c8  #000007e4
        :pswitch_c7  #000007e5
        :pswitch_c6  #000007e6
        :pswitch_42  #000007e7
        :pswitch_c5  #000007e8
        :pswitch_42  #000007e9
        :pswitch_c2  #000007ea
        :pswitch_c1  #000007eb
        :pswitch_42  #000007ec
        :pswitch_42  #000007ed
        :pswitch_fc  #000007ee
        :pswitch_f7  #000007ef
        :pswitch_c0  #000007f0
        :pswitch_bd  #000007f1
        :pswitch_fc  #000007f2
        :pswitch_fc  #000007f3
        :pswitch_bc  #000007f4
        :pswitch_fc  #000007f5
        :pswitch_b9  #000007f6
        :pswitch_b8  #000007f7
        :pswitch_b7  #000007f8
        :pswitch_b4  #000007f9
    .end packed-switch

    :sswitch_data_158
    .sparse-switch
        0x82f -> :sswitch_a6
        0x833 -> :sswitch_93
        0x8b1 -> :sswitch_91
        0x8b2 -> :sswitch_8f
        0x8b3 -> :sswitch_73
        0x8b4 -> :sswitch_8d
        0x8de -> :sswitch_8b
        0x8df -> :sswitch_8b
        0x8e2 -> :sswitch_89
        0x8e8 -> :sswitch_87
        0x8e9 -> :sswitch_89
        0x961 -> :sswitch_87
        0x962 -> :sswitch_85
        0x963 -> :sswitch_83
        0x965 -> :sswitch_87
        0x966 -> :sswitch_80
        0x967 -> :sswitch_7e
        0x968 -> :sswitch_7c
        0x96b -> :sswitch_93
        0x96c -> :sswitch_85
        0x96e -> :sswitch_7a
        0x96f -> :sswitch_8f
        0x97e -> :sswitch_80
        0x97f -> :sswitch_78
        0x988 -> :sswitch_89
        0x989 -> :sswitch_89
        0x98a -> :sswitch_76
        0xa28 -> :sswitch_73
        0xa29 -> :sswitch_8d
        0xa2d -> :sswitch_8d
        0xa2e -> :sswitch_76
        0xa3a -> :sswitch_78
        0xa3b -> :sswitch_7e
        0xa3c -> :sswitch_70
        0xa3d -> :sswitch_8b
        0xa3e -> :sswitch_6c
        0xa3f -> :sswitch_76
        0xa40 -> :sswitch_78
        0xa46 -> :sswitch_68
        0xa47 -> :sswitch_64
        0xa48 -> :sswitch_80
        0xa49 -> :sswitch_60
    .end sparse-switch
.end method

.method public static getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 4

    check-cast p0, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    :goto_6
    move-object v1, v0

    :cond_7
    if-eqz v0, :cond_14

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_14
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0
.end method
