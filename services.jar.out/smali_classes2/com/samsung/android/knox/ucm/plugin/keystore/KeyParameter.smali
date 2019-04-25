.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# instance fields
.field private mIsManaged:Z

.field private mOptions:Landroid/os/Bundle;

.field private mSourceUid:I


# direct methods
.method public constructor <init>(IZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mSourceUid:I

    iput-boolean p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mIsManaged:Z

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSourceUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mSourceUid:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mIsManaged:Z

    return v0
.end method
