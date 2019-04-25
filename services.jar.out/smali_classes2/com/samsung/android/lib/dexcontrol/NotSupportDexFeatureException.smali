.class public Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
.super Ljava/lang/Exception;
.source "NotSupportDexFeatureException.java"


# instance fields
.field private pid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->pid:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->pid:I

    const v1, 0xa020

    if-eq v0, v1, :cond_1

    const v1, 0xa029

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "your dex does not support this feature"

    return-object v0

    :cond_0
    const-string v0, "DeX Pad does not support this feature"

    return-object v0

    :cond_1
    const-string v0, "DeX Station does not support this feature"

    return-object v0
.end method
