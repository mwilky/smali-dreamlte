.class public Lcom/android/systemui/qs/DataUsageView$Formatter;
.super Ljava/lang/Object;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/DataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;
    .locals 15

    move-wide/from16 v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    neg-long v7, v0

    long-to-float v7, v7

    goto :goto_1

    :cond_1
    long-to-float v7, v0

    :goto_1
    const v8, 0x7f12020f

    const-wide/16 v9, 0x1

    const/high16 v11, 0x44610000    # 900.0f

    cmpl-float v12, v7, v11

    const/high16 v13, 0x44800000    # 1024.0f

    if-lez v12, :cond_2

    const v8, 0x7f12082a

    const-wide/16 v9, 0x400

    div-float/2addr v7, v13

    :cond_2
    cmpl-float v12, v7, v11

    if-lez v12, :cond_3

    const v8, 0x7f120891

    const-wide/32 v9, 0x100000

    div-float/2addr v7, v13

    :cond_3
    cmpl-float v12, v7, v11

    if-lez v12, :cond_4

    const v8, 0x7f120431

    const-wide/32 v9, 0x40000000

    div-float/2addr v7, v13

    :cond_4
    cmpl-float v12, v7, v11

    if-lez v12, :cond_5

    const v8, 0x7f120bf3

    const-wide v9, 0x10000000000L

    div-float/2addr v7, v13

    :cond_5
    cmpl-float v11, v7, v11

    if-lez v11, :cond_6

    const v8, 0x7f120966

    const-wide/high16 v9, 0x4000000000000L

    div-float/2addr v7, v13

    :cond_6
    const-wide/16 v11, 0x1

    cmp-long v11, v9, v11

    if-eqz v11, :cond_c

    const/high16 v11, 0x42c80000    # 100.0f

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v7, v11

    if-gez v11, :cond_8

    const/16 v11, 0x64

    const-string v12, "%.2f"

    goto :goto_3

    :cond_8
    const/high16 v11, 0x41200000    # 10.0f

    cmpg-float v11, v7, v11

    if-gez v11, :cond_a

    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_9

    const/16 v11, 0xa

    const-string v12, "%.1f"

    goto :goto_3

    :cond_9
    const/16 v11, 0x64

    const-string v12, "%.2f"

    goto :goto_3

    :cond_a
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    const-string v12, "%.0f"

    goto :goto_3

    :cond_b
    const/16 v11, 0x64

    const-string v12, "%.2f"

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v11, 0x1

    const-string v12, "%.0f"

    :goto_3
    nop

    if-eqz v4, :cond_d

    neg-float v7, v7

    :cond_d
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v6, v5

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    and-int/lit8 v6, p3, 0x2

    if-nez v6, :cond_e

    goto :goto_4

    :cond_e
    int-to-float v2, v11

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v9

    int-to-long v13, v11

    div-long/2addr v2, v13

    :goto_4
    move-object v6, p0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;

    invoke-direct {v14, v5, v13, v2, v3}, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v14
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/systemui/qs/DataUsageView$Formatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;

    move-result-object v0

    const v2, 0x1040355

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, v0, Lcom/android/systemui/qs/DataUsageView$Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/qs/DataUsageView$Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
