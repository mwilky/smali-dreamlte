.class public Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;
.super Ljava/lang/Object;
.source "FindKinibiVersion.java"


# instance fields
.field private compatibilityMatrixTEEVersion:[Ljava/lang/String;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->mId:Ljava/lang/String;

    const-string/jumbo v1, "tbase-200_EXYNOS5410_V005_Patch6(MC20_EXYNOS5410_V005_Patch6)"

    const-string/jumbo v2, "tbase-200_EXYNOS4X12_V004(MC20_EXYNOS_4X12_V004)"

    const-string/jumbo v3, "tbase-200_EXYNOS_4X12_V002(MC20_EXYNOS_4X12_V002)"

    const-string v4, "*** t-base-300-QC-8974-Android-V003 ###"

    const-string/jumbo v5, "t-base-202-QC-8974-Android-v001"

    const-string/jumbo v6, "tbase-202-QC-V001-fixMCTWO2033-forTests"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->compatibilityMatrixTEEVersion:[Ljava/lang/String;

    iput-object p1, p0, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->mId:Ljava/lang/String;

    return-void
.end method

.method private find_index([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getResult()I
    .locals 2

    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->compatibilityMatrixTEEVersion:[Ljava/lang/String;

    iget-object v1, p0, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/trustonic/teeclient/kinibichecker/FindKinibiVersion;->find_index([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
