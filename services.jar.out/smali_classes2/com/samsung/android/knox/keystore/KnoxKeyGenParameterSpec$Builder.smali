.class public final Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "KnoxKeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAccessorIdentitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessorIdsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIdentitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIdsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAttestationRoot:Ljava/lang/String;

.field private mExtendedKeyUsage:[Ljava/lang/String;

.field private mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private mKeyUsage:[Z

.field private mKnoxCsrResponseRequired:Z

.field private mKnoxObjectProtectionRequired:Z

.field private mSubjectAlternativeName:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKnoxObjectProtectionRequired:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdsSet:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdentitiesSet:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdentitiesSet:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKeyUsage:[Z

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mExtendedKeyUsage:[Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAttestationRoot:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKnoxCsrResponseRequired:Z

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mSubjectAlternativeName:[B

    return-void
.end method

.method private splitIds(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public build()Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;
    .locals 14

    new-instance v13, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;

    iget-boolean v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKnoxObjectProtectionRequired:Z

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdentitiesSet:Ljava/util/Set;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdentitiesSet:Ljava/util/Set;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKeyUsage:[Z

    iget-object v7, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mExtendedKeyUsage:[Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAttestationRoot:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKnoxCsrResponseRequired:Z

    iget-object v10, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mSubjectAlternativeName:[B

    iget-object v11, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;-><init>(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLandroid/security/keystore/KeyGenParameterSpec;Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$1;)V

    return-object v13
.end method

.method public setAccessorIdentities(Ljava/util/List;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;)",
            "Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/keystore/AccessorIdentity;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdsSet:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdentitiesSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessor ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public setAccessorIds(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessor ids must be printable characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAccessorIds(Ljava/util/List;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessor ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public varargs setAccessorIds([Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessor ids must be printable characters"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public setAdministratorIdentities(Ljava/util/List;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/AccessorIdentity;",
            ">;)",
            "Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/keystore/AccessorIdentity;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdentitiesSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessor ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/AccessorIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public setAdministratorIds(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessor ids must be printable characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdministratorIds(Ljava/util/List;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessor ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public varargs setAdministratorIds([Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessor ids must be printable characters"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public setAttestationRoot(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mAttestationRoot:Ljava/lang/String;

    return-object p0
.end method

.method public setExtendedKeyUsage([Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mExtendedKeyUsage:[Ljava/lang/String;

    return-object p0
.end method

.method public setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 6

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [C

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput-char v5, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [C

    const/16 v3, 0x1f

    aput-char v3, v2, v4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "malformed alias"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setKeyUsage([Z)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKeyUsage:[Z

    return-object p0
.end method

.method public setKnoxCsrResponseRequired(Z)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKnoxCsrResponseRequired:Z

    return-object p0
.end method

.method public setKnoxObjectProtectionRequired(Z)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mKnoxObjectProtectionRequired:Z

    return-object p0
.end method

.method public setSubjectAlternativeName([B)Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;->mSubjectAlternativeName:[B

    return-object p0
.end method
