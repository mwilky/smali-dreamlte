.class public Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;
.super Lcom/android/systemui/infinity/tangram/TangramSystem;
.source "TangramBlueSystem.java"


# static fields
.field private static final PSD_VERTEX_DATA:[[F

.field private static final VERTEX_DATA:[[F

.field public static final hidePosition:[[F

.field public static final mapHeight:F = 2010.0f

.field public static final mapWidth:F = 3841.0f

.field public static final previewHeight:F = 2960.0f

.field public static final previewWidth:F = 1440.0f

.field public static final textureId:I = 0x7f08035f


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    sput-object v1, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->hidePosition:[[F

    new-array v0, v0, [[F

    const/16 v1, 0x18

    new-array v3, v1, [F

    fill-array-data v3, :array_8

    aput-object v3, v0, v4

    new-array v3, v1, [F

    fill-array-data v3, :array_9

    aput-object v3, v0, v5

    new-array v3, v1, [F

    fill-array-data v3, :array_a

    aput-object v3, v0, v2

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v8

    new-array v2, v1, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v9

    new-array v2, v1, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v10

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    sget-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    array-length v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->VERTEX_DATA:[[F

    return-void

    :array_0
    .array-data 4
        0x3ef5c28f    # 0.48f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_1
    .array-data 4
        0x3da3d70a    # 0.08f
        0x3f428f5c    # 0.76f
    .end array-data

    :array_2
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3e8f5c29    # 0.28f
    .end array-data

    :array_3
    .array-data 4
        0x3ea3d70a    # 0.32f
        0x3e8f5c29    # 0.28f
    .end array-data

    :array_4
    .array-data 4
        0x3e3851ec    # 0.18f
        0x3e0f5c29    # 0.14f
    .end array-data

    :array_5
    .array-data 4
        -0x418a3d71    # -0.24f
        -0x41b33333    # -0.2f
    .end array-data

    :array_6
    .array-data 4
        -0x420a3d71    # -0.12f
        -0x40f0a3d7    # -0.56f
    .end array-data

    :array_7
    .array-data 4
        -0x4147ae14    # -0.36f
        -0x4147ae14    # -0.36f
    .end array-data

    :array_8
    .array-data 4
        0x43948000    # 297.0f
        0x43550000    # 213.0f
        0x449ee000    # 1271.0f
        0x44460000    # 792.0f
        -0x3cab0000    # -213.0f
        0x4470c000    # 963.0f
        0x443e4000    # 761.0f
        0x44c0c000    # 1542.0f
        0x444c4000    # 817.0f
        -0x3c718000    # -285.0f
        0x44dfe000    # 1791.0f
        0x43930000    # 294.0f
        0x444c4000    # 817.0f
        -0x3bef4000    # -579.0f
        0x44dfe000    # 1791.0f
        0x0
        -0x3cab0000    # -213.0f
        0x44244000    # 657.0f
        0x443e4000    # 761.0f
        0x449a8000    # 1236.0f
        -0x3cab0000    # -213.0f
        0x4470c000    # 963.0f
        0x443e4000    # 761.0f
        0x44c0c000    # 1542.0f
    .end array-data

    :array_9
    .array-data 4
        0x43e28000    # 453.0f
        0x44320000    # 712.0f
        0x44bde000    # 1519.0f
        0x44768000    # 986.0f
        -0x3d5a0000    # -83.0f
        0x44d46000    # 1699.0f
        0x4475c000    # 983.0f
        0x44f6a000    # 1973.0f
        0x44774000    # 989.0f
        0x43ca0000    # 404.0f
        0x45007000    # 2055.0f
        0x44298000    # 678.0f
        0x44774000    # 989.0f
        -0x3c770000    # -274.0f
        0x45007000    # 2055.0f
        0x0
        -0x3d5a0000    # -83.0f
        0x447f4000    # 1021.0f
        0x4475c000    # 983.0f
        0x44a1e000    # 1295.0f
        -0x3d5a0000    # -83.0f
        0x44d46000    # 1699.0f
        0x4475c000    # 983.0f
        0x44f6a000    # 1973.0f
    .end array-data

    :array_a
    .array-data 4
        0x441bc000    # 623.0f
        0x43a80000    # 336.0f
        0x45026000    # 2086.0f
        0x4424c000    # 659.0f
        0x42880000    # 68.0f
        0x4478c000    # 995.0f
        0x44bf6000    # 1531.0f
        0x44a4c000    # 1318.0f
        0x43a68000    # 333.0f
        0x4478c000    # 995.0f
        0x44e08000    # 1796.0f
        0x44a4c000    # 1318.0f
        0x44934000    # 1178.0f
        -0x3e180000    # -29.0f
        0x45251000    # 2641.0f
        0x43930000    # 294.0f
        0x44934000    # 1178.0f
        -0x3c5e8000    # -323.0f
        0x45251000    # 2641.0f
        0x0
        0x42880000    # 68.0f
        0x4478c000    # 995.0f
        0x44bf6000    # 1531.0f
        0x44a4c000    # 1318.0f
    .end array-data

    :array_b
    .array-data 4
        0x446bc000    # 943.0f
        0x43808000    # 257.0f
        0x45004000    # 2052.0f
        0x447b4000    # 1005.0f
        0x42c80000    # 100.0f
        0x449dc000    # 1262.0f
        0x44972000    # 1209.0f
        0x44fb4000    # 2010.0f
        0x43e60000    # 460.0f
        0x449dc000    # 1262.0f
        0x44c42000    # 1569.0f
        0x44fb4000    # 2010.0f
        0x44df6000    # 1787.0f
        -0x3c520000    # -348.0f
        0x45350000    # 2896.0f
        0x43c80000    # 400.0f
        0x44df6000    # 1787.0f
        -0x3bc50000    # -748.0f
        0x45350000    # 2896.0f
        0x0
        0x42c80000    # 100.0f
        0x449dc000    # 1262.0f
        0x44972000    # 1209.0f
        0x44fb4000    # 2010.0f
    .end array-data

    :array_c
    .array-data 4
        0x44478000    # 798.0f
        0x44714000    # 965.0f
        0x45183000    # 2435.0f
        0x448c6000    # 1123.0f
        0x428c0000    # 70.0f
        0x44d30000    # 1688.0f
        0x44d56000    # 1707.0f
        0x44e6c000    # 1846.0f
        0x44278000    # 670.0f
        0x44d30000    # 1688.0f
        0x45103000    # 2307.0f
        0x44e6c000    # 1846.0f
        0x44c78000    # 1596.0f
        0x440c0000    # 560.0f
        0x454a1000    # 3233.0f
        0x44338000    # 718.0f
        0x44c78000    # 1596.0f
        -0x3ce20000    # -158.0f
        0x454a1000    # 3233.0f
        0x0
        0x428c0000    # 70.0f
        0x44d30000    # 1688.0f
        0x44d56000    # 1707.0f
        0x44e6c000    # 1846.0f
    .end array-data

    :array_d
    .array-data 4
        0x44600000    # 896.0f
        0x44956000    # 1195.0f
        0x4549f000    # 3231.0f
        0x4471c000    # 967.0f
        0x42600000    # 56.0f
        0x4506b000    # 2155.0f
        0x45157000    # 2391.0f
        0x44f0e000    # 1927.0f
        0x44bc4000    # 1506.0f
        0x4506b000    # 2155.0f
        0x45701000    # 3841.0f
        0x44f0e000    # 1927.0f
        0x44bc4000    # 1506.0f
        0x43630000    # 227.0f
        0x45701000    # 3841.0f
        -0x40800000    # -1.0f
        0x42600000    # 56.0f
        0x44f78000    # 1980.0f
        0x45157000    # 2391.0f
        0x44db0000    # 1752.0f
        0x42600000    # 56.0f
        0x4506b000    # 2155.0f
        0x45157000    # 2391.0f
        0x44f0e000    # 1927.0f
    .end array-data

    :array_e
    .array-data 4
        0x449ec000    # 1270.0f
        0x44a60000    # 1328.0f
        0x444c8000    # 818.0f
        0x440b8000    # 558.0f
        0x4425c000    # 663.0f
        0x44f48000    # 1956.0f
        0x43530000    # 211.0f
        0x4497e000    # 1215.0f
        0x44604000    # 897.0f
        0x44f48000    # 1956.0f
        0x43de8000    # 445.0f
        0x4497e000    # 1215.0f
        0x44d08000    # 1668.0f
        0x44800000    # 1024.0f
        0x44980000    # 1216.0f
        0x437e0000    # 254.0f
        0x44d08000    # 1668.0f
        0x44394000    # 741.0f
        0x44980000    # 1216.0f
        -0x3e180000    # -29.0f
        0x4425c000    # 663.0f
        0x44f48000    # 1956.0f
        0x43530000    # 211.0f
        0x4497e000    # 1215.0f
    .end array-data

    :array_f
    .array-data 4
        0x44a3c000    # 1310.0f
        0x44b88000    # 1476.0f
        0x448ec000    # 1142.0f
        0x440e8000    # 570.0f
        0x43280000    # 168.0f
        0x4526e000    # 2670.0f
        0x0
        0x44dc8000    # 1764.0f
        0x43f50000    # 490.0f
        0x4526e000    # 2670.0f
        0x43a10000    # 322.0f
        0x44dc8000    # 1764.0f
        0x44cb6000    # 1627.0f
        0x44a20000    # 1296.0f
        0x44b66000    # 1459.0f
        0x43c30000    # 390.0f
        0x44cb6000    # 1627.0f
        0x44628000    # 906.0f
        0x44b66000    # 1459.0f
        0x0
        0x43280000    # 168.0f
        0x4526e000    # 2670.0f
        0x0
        0x44dc8000    # 1764.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;)V

    const v0, -0x4170a3d7    # -0.28f

    iput v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->plusTangramAlpha:F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/infinity/tangram/TangramData;->rotateY:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    sget-object v3, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->hidePosition:[[F

    aget-object v3, v3, v1

    aget v3, v3, v0

    iput v3, v2, Lcom/android/systemui/infinity/tangram/TangramData;->plusHideMoveX:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->datas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/TangramData;

    sget-object v3, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->hidePosition:[[F

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Lcom/android/systemui/infinity/tangram/TangramData;->plusHideMoveY:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateFrame()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->checkIsDoneShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->showEasing:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->setTangramEasing(F)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->moveProgress()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->tiltEasing:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->setTangramEasing(F)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->isLeft:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->moveLeft()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->moveRight()V

    :goto_0
    return-void
.end method

.method protected getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
    .locals 13

    new-instance v0, Lcom/android/systemui/infinity/tangram/TangramMapData;

    invoke-direct {v0}, Lcom/android/systemui/infinity/tangram/TangramMapData;-><init>()V

    const v1, 0x7f08035f

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapId:I

    const v1, 0x45701000    # 3841.0f

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapWidth:F

    const v2, 0x44fb4000    # 2010.0f

    iput v2, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapHeight:F

    const/high16 v3, 0x45390000    # 2960.0f

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewHeight:F

    const/high16 v4, 0x44b40000    # 1440.0f

    iput v4, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewWidth:F

    sget-object v5, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->VERTEX_DATA:[[F

    iput-object v5, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    const v5, 0x40038e39

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    sget-object v8, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v7, v8, :cond_5

    move v8, v6

    :goto_1
    sget-object v10, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    aget-object v10, v10, v7

    array-length v10, v10

    if-ge v8, v10, :cond_4

    rem-int/lit8 v10, v8, 0x4

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v10, :cond_0

    iget-object v10, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v10, v10, v7

    sget-object v12, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    aget-object v12, v12, v7

    aget v12, v12, v8

    div-float/2addr v12, v4

    sub-float/2addr v12, v11

    aput v12, v10, v8

    :cond_0
    rem-int/lit8 v10, v8, 0x4

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    iget-object v10, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v10, v10, v7

    sget-object v12, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    aget-object v12, v12, v7

    aget v12, v12, v8

    div-float/2addr v12, v3

    sub-float/2addr v11, v12

    mul-float/2addr v11, v5

    aput v11, v10, v8

    :cond_1
    rem-int/lit8 v10, v8, 0x4

    if-ne v10, v9, :cond_2

    iget-object v10, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v10, v10, v7

    sget-object v11, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    aget-object v11, v11, v7

    aget v11, v11, v8

    div-float/2addr v11, v1

    aput v11, v10, v8

    :cond_2
    rem-int/lit8 v10, v8, 0x4

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    iget-object v10, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    aget-object v10, v10, v7

    sget-object v11, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;->PSD_VERTEX_DATA:[[F

    aget-object v11, v11, v7

    aget v11, v11, v8

    div-float/2addr v11, v2

    aput v11, v10, v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iput v9, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    return-object v0
.end method

.method public hide(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->hide(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->show(Z)V

    return-void
.end method
