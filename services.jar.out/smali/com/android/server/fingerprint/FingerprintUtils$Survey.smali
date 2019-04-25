.class Lcom/android/server/fingerprint/FingerprintUtils$Survey;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Survey"
.end annotation


# static fields
.field static final ALL:I = 0x3

.field static final DQA:I = 0x2

.field static final GSIM:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "ALL"

    return-object v0

    :pswitch_1
    const-string v0, "DQA"

    return-object v0

    :pswitch_2
    const-string v0, "GSIN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
