.class public Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
.super Ljava/lang/Object;
.source "DomainFilterRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLEAR_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

.field private mDenyDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDns1:Ljava/lang/String;

.field private mDns2:Ljava/lang/String;

.field private mNullCheck:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v0}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>()V

    const-class v0, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mNullCheck:I

    iget v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mNullCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mNullCheck:I

    iget v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mNullCheck:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/firewall/DomainFilterRule$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/AppIdentity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/AppIdentity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/AppIdentity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    :goto_1
    iput-object p4, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllowDomains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    return-object v0
.end method

.method public getApplication()Lcom/samsung/android/knox/AppIdentity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    return-object v0
.end method

.method public getDenyDomains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    return-object v0
.end method

.method public getDns1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    return-object v0
.end method

.method public getDns2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowDomains(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public setApplication(Lcom/samsung/android/knox/AppIdentity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    return-void
.end method

.method public setDenyDomains(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public setDns1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    return-void
.end method

.method public setDns2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
