.class public final Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# static fields
.field public static final MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

.field public static final sMinPerceptibleAccelerationsDb:[F

.field public static final sMinPerceptibleFrequenciesHz:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x29

    new-array v0, v0, [Landroid/util/Pair;

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d3c6148    # -97.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d7447ae    # -69.86f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d84c28f    # -62.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d94c28f    # -58.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d9d3d71    # -56.69f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3da4eb85    # -54.77f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x40e66666    # 7.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dac999a    # -52.85f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3db0eb85    # -51.77f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x410a3d71    # 8.64f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3db4a3d7    # -50.84f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dbc6666    # -48.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const v1, 0x4125eb85    # 10.37f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dbdeb85    # -48.52f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const v1, 0x41470a3d    # 12.44f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, -0x3dc60000    # -46.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const v1, 0x416ee148    # 14.93f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dce47ae    # -44.43f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dce999a    # -44.35f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const v1, 0x418f5c29    # 17.92f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dd828f6    # -41.96f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dde8f5c    # -40.36f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/high16 v1, 0x41ac0000    # 21.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3de1999a    # -39.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dea147b    # -37.48f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const v1, 0x41ce6666    # 25.8f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dec47ae    # -36.93f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3df6c28f    # -34.31f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dfb7ae1    # -33.13f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dfcc28f    # -32.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e007ae1    # -31.94f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v3, -0x3e01d70a    # -31.77f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v4, -0x3e0347ae    # -31.59f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v4, -0x3e03999a    # -31.55f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const v1, 0x42accccd    # 86.4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e0228f6    # -31.73f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e00cccd    # -31.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const v1, 0x42cf5c29    # 103.68f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const v1, 0x42f8d70a    # 124.42f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e026666    # -31.7f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const v1, 0x43154ccd    # 149.3f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e04f5c3    # -31.38f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e053333    # -31.35f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const v1, 0x433328f6    # 179.16f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e07d70a    # -31.02f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e091eb8    # -30.86f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/high16 v1, 0x43570000    # 215.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e0d3333    # -30.35f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e1828f6    # -28.98f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const/high16 v1, 0x43810000    # 258.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e1a8f5c    # -28.68f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e29851f    # -26.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e61851f    # -19.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    array-length v1, v0

    new-array v1, v1, [F

    sput-object v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    return-void
.end method

.method public static getMinPerceptibleAccelerationDb(F)F
    .locals 5

    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpg-float v2, p0, v2

    sget-object v3, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    if-gtz v2, :cond_0

    aget p0, v3, v1

    return p0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    array-length p0, v3

    add-int/lit8 p0, p0, -0x1

    aget p0, v3, p0

    return p0

    :cond_1
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v1

    if-ltz v1, :cond_2

    aget p0, v3, v1

    return p0

    :cond_2
    neg-int v1, v1

    add-int/lit8 v2, v1, -0x2

    aget v4, v3, v2

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-static {v4, v3, v2, v0, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 19

    const-wide/16 v0, 0x1000

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationsGs()[F

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v5, v3

    :goto_0
    array-length v6, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const/high16 v9, 0x41a00000    # 20.0f

    if-ge v5, v6, :cond_5

    aget v6, v1, v5

    invoke-static {v6}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->getMinPerceptibleAccelerationDb(F)F

    move-result v6

    const/high16 v10, 0x41200000    # 10.0f

    add-float/2addr v6, v10

    div-float/2addr v6, v9

    float-to-double v10, v6

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v6, v10

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_3

    aget v10, v2, v5

    cmpg-float v11, v6, v10

    if-gtz v11, :cond_3

    if-nez v5, :cond_2

    aget v4, v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v5, -0x1

    aget v7, v1, v4

    aget v8, v1, v5

    aget v4, v2, v4

    invoke-static {v7, v8, v4, v10, v6}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_4

    aget v10, v2, v5

    cmpl-float v11, v6, v10

    if-ltz v11, :cond_4

    add-int/lit8 v11, v5, -0x1

    aget v12, v1, v11

    aget v5, v1, v5

    aget v11, v2, v11

    invoke-static {v12, v5, v11, v10, v6}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v5

    new-instance v6, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "BasicToPwleSegmentAdapter"

    const-string v5, "Failed to retrieve frequency range. A valid frequency range must be available to create envelope vibration effects."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget v5, v1, v5

    new-instance v6, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-nez v6, :cond_7

    goto/16 :goto_9

    :cond_7
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x1

    const/4 v10, -0x1

    move v11, v3

    :goto_3
    array-length v12, v1

    if-ge v11, v12, :cond_b

    aget v12, v1, v11

    cmpg-float v13, v12, v4

    if-gez v13, :cond_8

    goto :goto_4

    :cond_8
    cmpl-float v12, v12, v5

    if-lez v12, :cond_9

    goto :goto_5

    :cond_9
    aget v12, v2, v11

    cmpl-float v13, v12, v6

    if-lez v13, :cond_a

    move v10, v11

    move v6, v12

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_b
    :goto_5
    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    mul-double/2addr v11, v13

    double-to-float v2, v11

    aget v1, v1, v10

    invoke-static {v1}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->getMinPerceptibleAccelerationDb(F)F

    move-result v1

    sub-float/2addr v2, v1

    :goto_6
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_11

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v10, v6, Landroid/os/vibrator/BasicPwleSegment;

    if-eqz v10, :cond_10

    check-cast v6, Landroid/os/vibrator/BasicPwleSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v10

    sub-float v11, v5, v4

    mul-float/2addr v10, v11

    add-float v15, v10, v4

    invoke-virtual {v6}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v10, v4

    invoke-virtual {v6}, Landroid/os/vibrator/BasicPwleSegment;->getStartIntensity()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v13, :cond_c

    move/from16 p0, v12

    move/from16 v13, p0

    goto :goto_7

    :cond_c
    mul-float/2addr v11, v2

    invoke-static {v15}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->getMinPerceptibleAccelerationDb(F)F

    move-result v13

    add-float/2addr v13, v11

    div-float/2addr v13, v9

    move/from16 p0, v12

    float-to-double v12, v13

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v0, v15}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result v12

    cmpl-float v13, v11, v12

    if-ltz v13, :cond_d

    move v13, v14

    goto :goto_7

    :cond_d
    div-float/2addr v11, v12

    move v13, v11

    :goto_7
    invoke-virtual {v6}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v11

    cmpl-float v12, v11, p0

    if-nez v12, :cond_e

    move/from16 v14, p0

    goto :goto_8

    :cond_e
    mul-float/2addr v11, v2

    invoke-static {v10}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->getMinPerceptibleAccelerationDb(F)F

    move-result v12

    add-float/2addr v12, v11

    div-float/2addr v12, v9

    float-to-double v11, v12

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v0, v10}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result v12

    cmpl-float v16, v11, v12

    if-ltz v16, :cond_f

    goto :goto_8

    :cond_f
    div-float v12, v11, v12

    move v14, v12

    :goto_8
    new-instance v12, Landroid/os/vibrator/PwleSegment;

    invoke-virtual {v6}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v17

    move/from16 v16, v10

    invoke-direct/range {v12 .. v18}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_11
    :goto_9
    return p3
.end method
