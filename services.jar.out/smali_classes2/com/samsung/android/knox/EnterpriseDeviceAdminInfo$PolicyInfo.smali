.class public Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# instance fields
.field public final description:I

.field public final descriptionForSecondaryUsers:I

.field public final ident:I

.field public final label:I

.field public final labelForSecondaryUsers:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    iput p4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    iput p5, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    iput p6, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    return-void
.end method
