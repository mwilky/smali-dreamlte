.class Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseMACString"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->b:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    return-void
.end method

.method private a()I
    .locals 3

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    iget v1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a:Ljava/lang/String;

    iget v1, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public nextByteValue()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a()I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-gt v1, v0, :cond_3

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->d:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->c:I

    iget v2, p0, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes$ParseMACString;->b:I

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Bad Mac value"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    int-to-byte v0, v1

    return v0

    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Bad Mac value"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Bad Mac value"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
