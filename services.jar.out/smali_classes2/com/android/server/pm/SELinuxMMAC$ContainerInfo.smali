.class Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerInfo"
.end annotation


# instance fields
.field accessInfo:I

.field allowContainerSpace:Ljava/lang/String;

.field allowSpace:Ljava/lang/String;

.field apmWL:Ljava/lang/String;

.field destPkgName:[Ljava/lang/String;

.field sdcarduserid:Ljava/lang/String;

.field sdcarduseridBL:Ljava/lang/String;

.field seInfo:Ljava/lang/String;

.field space:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->space:I

    iput v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowSpace:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerSpace:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->destPkgName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->apmWL:Ljava/lang/String;

    return-void
.end method
