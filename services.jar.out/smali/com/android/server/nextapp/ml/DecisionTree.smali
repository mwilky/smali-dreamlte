.class public Lcom/android/server/nextapp/ml/DecisionTree;
.super Ljava/lang/Object;
.source "DecisionTree.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;,
        Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;,
        Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;,
        Lcom/android/server/nextapp/ml/DecisionTree$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ML-DecisionTree"

.field private static final serialVersionUID:J = -0x456229d97866383bL


# instance fields
.field private DEBUG:Z

.field private defaultForMissingFeature:[D

.field private featureNum:I

.field private features:[[D

.field private labels:[D

.field private root:Lcom/android/server/nextapp/ml/DecisionTree$Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    iget-boolean v0, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ML-DecisionTree"

    const-string v1, "DecisionTree created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private buildDecisionTree([I[I)Lcom/android/server/nextapp/ml/DecisionTree$Node;
    .locals 13

    new-instance v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/ml/DecisionTree$Node;-><init>(Lcom/android/server/nextapp/ml/DecisionTree;)V

    iput-object p1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    iput-object p2, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->label:D

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/nextapp/ml/DecisionTree$Node;

    iget-object v2, p0, Lcom/android/server/nextapp/ml/DecisionTree;->labels:[D

    iget-object v3, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-wide v2, v2, v3

    const/4 v5, 0x1

    move v6, v4

    :goto_0
    iget-object v7, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/nextapp/ml/DecisionTree;->labels:[D

    iget-object v8, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    aget v8, v8, v6

    aget-wide v7, v7, v8

    cmpl-double v7, v7, v2

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    iput-wide v2, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->label:D

    iput-object v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/nextapp/ml/DecisionTree;->findMostLabel([I)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->label:D

    iget-object v6, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    array-length v6, v6

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/nextapp/ml/DecisionTree;->getBestSplit(Lcom/android/server/nextapp/ml/DecisionTree$Node;)Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;

    move-result-object v6

    iget v7, v6, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->splitAttr:I

    iput v7, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitAttr:I

    iget v7, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitAttr:I

    if-gez v7, :cond_5

    iget-boolean v4, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ML-DecisionTree"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "node.splitAttr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitAttr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    return-object v0

    :cond_5
    iget-object v7, v6, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->splitPoints:[D

    iput-object v7, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitPoints:[D

    iget-object v7, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitPoints:[D

    array-length v7, v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_6

    iput-object v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    return-object v0

    :cond_6
    const/4 v7, 0x0

    array-length v9, p2

    sub-int/2addr v9, v8

    new-array v7, v9, [I

    const/4 v8, 0x0

    array-length v9, p2

    move v10, v8

    move v8, v4

    :goto_2
    if-ge v8, v9, :cond_8

    aget v11, p2, v8

    iget v12, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitAttr:I

    if-eq v11, v12, :cond_7

    add-int/lit8 v12, v10, 0x1

    aput v11, v7, v10

    move v10, v12

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    iget-object v8, v6, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    array-length v8, v8

    new-array v8, v8, [Lcom/android/server/nextapp/ml/DecisionTree$Node;

    iput-object v8, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/nextapp/ml/DecisionTree$Node;

    nop

    :goto_3
    iget-object v8, v6, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    array-length v8, v8

    if-ge v4, v8, :cond_9

    iget-object v8, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/nextapp/ml/DecisionTree$Node;

    iget-object v9, v6, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    aget-object v9, v9, v4

    invoke-direct {p0, v9, v7}, Lcom/android/server/nextapp/ml/DecisionTree;->buildDecisionTree([I[I)Lcom/android/server/nextapp/ml/DecisionTree$Node;

    move-result-object v9

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    iput-object v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    return-object v0

    :cond_a
    :goto_4
    iput-object v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    return-object v0
.end method

.method private entropy([I)D
    .locals 11

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, p1, v4

    iget-object v6, p0, Lcom/android/server/nextapp/ml/DecisionTree;->labels:[D

    aget-wide v6, v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v5, v4

    array-length v7, p1

    int-to-double v7, v7

    div-double/2addr v5, v7

    neg-double v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    add-double/2addr v0, v7

    goto :goto_2

    :cond_2
    return-wide v0
.end method

.method private fillMissingFeature()[D
    .locals 7

    invoke-direct {p0}, Lcom/android/server/nextapp/ml/DecisionTree;->findMostFeature()[D

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    aget-object v4, v4, v2

    aget-wide v5, v0, v3

    aput-wide v5, v4, v3

    iget-boolean v4, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ML-DecisionTree"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "feature["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] value is missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findMostFeature()[D
    .locals 11

    iget v0, p0, Lcom/android/server/nextapp/ml/DecisionTree;->featureNum:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v4, :cond_3

    move v4, v10

    move-wide v5, v8

    :cond_3
    goto :goto_3

    :cond_4
    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method private findMostLabel([I)D
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/server/nextapp/ml/DecisionTree;->labels:[D

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v1, :cond_2

    move v1, v7

    move-wide v2, v5

    :cond_2
    goto :goto_2

    :cond_3
    return-wide v2
.end method

.method private gainRatioByAttribute([II)Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;

    invoke-direct {v2, v0}, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;-><init>(Lcom/android/server/nextapp/ml/DecisionTree;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/nextapp/ml/DecisionTree;->entropy([I)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/nextapp/ml/DecisionTree;->splitByAttribute([II)Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;

    move-result-object v9

    iput-object v9, v2, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;->setInfo:Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;

    iget-object v9, v2, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;->setInfo:Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;

    iget-object v9, v9, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    array-length v13, v12

    int-to-double v13, v13

    array-length v15, v1

    move-object/from16 v16, v9

    move/from16 v17, v10

    int-to-double v9, v15

    div-double/2addr v13, v9

    invoke-direct {v0, v12}, Lcom/android/server/nextapp/ml/DecisionTree;->entropy([I)D

    move-result-wide v9

    mul-double/2addr v13, v9

    add-double/2addr v5, v13

    array-length v9, v12

    int-to-double v9, v9

    array-length v13, v1

    int-to-double v13, v13

    div-double/2addr v9, v13

    neg-double v13, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    mul-double v13, v13, v18

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v13, v0

    add-double/2addr v7, v13

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_0
    sub-double v0, v3, v5

    div-double/2addr v0, v7

    iput-wide v0, v2, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;->gainRatio:D

    return-object v2
.end method

.method private generateRandomAttribute(II[I)[I
    .locals 5

    new-array v0, p1, [I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_1

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v4, p3, v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private getBestSplit(Lcom/android/server/nextapp/ml/DecisionTree$Node;)Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;
    .locals 11

    const-wide/16 v0, 0x0

    new-instance v2, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;

    invoke-direct {v2, p0}, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;-><init>(Lcom/android/server/nextapp/ml/DecisionTree;)V

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->splitAttr:I

    iget-object v3, p1, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    array-length v3, v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p1, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    array-length v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v3, v5

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    array-length v4, v4

    if-le v3, v4, :cond_2

    iget-object v4, p1, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    array-length v3, v4

    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ML-DecisionTree"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "radom atribute num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p1, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    array-length v4, v4

    iget-object v5, p1, Lcom/android/server/nextapp/ml/DecisionTree$Node;->availableAttr:[I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/nextapp/ml/DecisionTree;->generateRandomAttribute(II[I)[I

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "ML-DecisionTree"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBestSplit: random attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget v7, v4, v6

    iget-object v8, p1, Lcom/android/server/nextapp/ml/DecisionTree$Node;->instanceSet:[I

    invoke-direct {p0, v8, v7}, Lcom/android/server/nextapp/ml/DecisionTree;->gainRatioByAttribute([II)Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;

    move-result-object v8

    iget-wide v9, v8, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;->gainRatio:D

    cmpl-double v9, v9, v0

    if-lez v9, :cond_5

    iget-wide v0, v8, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;->gainRatio:D

    iget-object v2, v8, Lcom/android/server/nextapp/ml/DecisionTree$SplitInfo;->setInfo:Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method private predictByDecisionTree([DLcom/android/server/nextapp/ml/DecisionTree$Node;)D
    .locals 5

    iget-object v0, p2, Lcom/android/server/nextapp/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/nextapp/ml/DecisionTree$Node;

    if-nez v0, :cond_0

    iget-wide v0, p2, Lcom/android/server/nextapp/ml/DecisionTree$Node;->label:D

    return-wide v0

    :cond_0
    iget v0, p2, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitAttr:I

    aget-wide v0, p1, v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p2, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitPoints:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p2, Lcom/android/server/nextapp/ml/DecisionTree$Node;->splitPoints:[D

    aget-wide v3, v3, v2

    cmpl-double v3, v3, v0

    if-nez v3, :cond_1

    iget-object v3, p2, Lcom/android/server/nextapp/ml/DecisionTree$Node;->childrenNodes:[Lcom/android/server/nextapp/ml/DecisionTree$Node;

    aget-object v3, v3, v2

    invoke-direct {p0, p1, v3}, Lcom/android/server/nextapp/ml/DecisionTree;->predictByDecisionTree([DLcom/android/server/nextapp/ml/DecisionTree$Node;)D

    move-result-wide v3

    return-wide v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-wide v2, p2, Lcom/android/server/nextapp/ml/DecisionTree$Node;->label:D

    return-wide v2
.end method

.method private splitByAttribute([II)Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;
    .locals 13

    new-instance v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;-><init>(Lcom/android/server/nextapp/ml/DecisionTree;)V

    iput p2, v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->splitAttr:I

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_1

    aget v6, p1, v1

    iget-object v7, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, p2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;

    iget v11, v9, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->count:I

    add-int/2addr v11, v10

    iput v11, v9, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->count:I

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v9, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;

    invoke-direct {v9, p0}, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;-><init>(Lcom/android/server/nextapp/ml/DecisionTree;)V

    add-int/lit8 v11, v5, 0x1

    iput v5, v9, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->valueID:I

    iput v10, v9, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->count:I

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v11

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v5, [D

    iput-object v1, v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->splitPoints:[D

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;

    iget-object v8, v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->splitPoints:[D

    iget v9, v3, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->valueID:I

    aput-wide v6, v8, v9

    iget-boolean v8, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "ML-DecisionTree"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "splitPoint/featureID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->valueID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_2

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ML-DecisionTree"

    const-string v6, "---------------------------------------------------------"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-array v3, v5, [[I

    iput-object v3, v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    new-array v3, v5, [I

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_5

    aput v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    array-length v6, p1

    :goto_4
    if-ge v4, v6, :cond_7

    aget v7, p1, v4

    iget-object v8, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    aget-object v8, v8, v7

    aget-wide v8, v8, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;

    iget v9, v8, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->valueID:I

    iget-object v10, v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    aget-object v10, v10, v9

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    iget v11, v8, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->count:I

    new-array v11, v11, [I

    aput-object v11, v10, v9

    iget-boolean v10, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "ML-DecisionTree"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create sub instaces set: num =  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->count:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->valueID:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v10, v0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->instanceSets:[[I

    aget-object v10, v10, v9

    aget v11, v3, v9

    add-int/lit8 v12, v11, 0x1

    aput v12, v3, v9

    aput v7, v10, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    return-object v0
.end method


# virtual methods
.method public predict([D)D
    .locals 5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/nextapp/ml/DecisionTree;->defaultForMissingFeature:[D

    aget-wide v3, v3, v2

    aput-wide v3, p1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/nextapp/ml/DecisionTree;->root:Lcom/android/server/nextapp/ml/DecisionTree$Node;

    invoke-direct {p0, p1, v2}, Lcom/android/server/nextapp/ml/DecisionTree;->predictByDecisionTree([DLcom/android/server/nextapp/ml/DecisionTree$Node;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ML-DecisionTree"

    const-string/jumbo v4, "predict-predictByDecisionTree error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-wide v0
.end method

.method public train(I[[D[D)V
    .locals 5

    iput-object p2, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    iput-object p3, p0, Lcom/android/server/nextapp/ml/DecisionTree;->labels:[D

    iput p1, p0, Lcom/android/server/nextapp/ml/DecisionTree;->featureNum:I

    iget-object v0, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    aput v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    aget-object v2, v2, v1

    array-length v2, v2

    new-array v2, v2, [I

    nop

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ML-DecisionTree"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "items = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/nextapp/ml/DecisionTree;->labels:[D

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/nextapp/ml/DecisionTree;->fillMissingFeature()[D

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/nextapp/ml/DecisionTree;->defaultForMissingFeature:[D

    iget-boolean v1, p0, Lcom/android/server/nextapp/ml/DecisionTree;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ML-DecisionTree"

    const-string v3, "Default values:"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ML-DecisionTree"

    iget-object v3, p0, Lcom/android/server/nextapp/ml/DecisionTree;->defaultForMissingFeature:[D

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/nextapp/ml/DecisionTree;->buildDecisionTree([I[I)Lcom/android/server/nextapp/ml/DecisionTree$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/nextapp/ml/DecisionTree;->root:Lcom/android/server/nextapp/ml/DecisionTree$Node;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/nextapp/ml/DecisionTree;->features:[[D

    iput-object v1, p0, Lcom/android/server/nextapp/ml/DecisionTree;->labels:[D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "ML-DecisionTree"

    const-string/jumbo v4, "train-buildDecisionTree error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
