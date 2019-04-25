.class public abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "UcmAgentProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UcmAgentKeyStoreSpi"
.end annotation


# instance fields
.field private errorStatus:I

.field private mProperty:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;->errorStatus:I

    return-void
.end method


# virtual methods
.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not determine certificate alias"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not determine creation date"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "please use engineLoad(LoadStoreParameter)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use engineSetEntry()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use engineSetEntry()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not determine encoding type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;->errorStatus:I

    return v0
.end method

.method public getProperty()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;->mProperty:Landroid/os/Bundle;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;->errorStatus:I

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;->mProperty:Landroid/os/Bundle;

    return-void
.end method
