.class Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleCode"
.end annotation


# static fields
.field static final sColorMap:[Ljava/lang/String;


# instance fields
.field final mColor:I

.field final mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "WHITE"

    const-string v1, "GREEN"

    const-string v2, "BLUE"

    const-string v3, "CYAN"

    const-string v4, "RED"

    const-string v5, "YELLOW"

    const-string v6, "MAGENTA"

    const-string v7, "INVALID"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->sColorMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    iput p2, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mColor:I

    return-void
.end method

.method static fromByte(B)Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;
    .locals 4

    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x1

    const/4 v2, 0x7

    and-int/2addr v1, v2

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    or-int/lit8 v0, v0, 0x1

    :cond_1
    new-instance v2, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->sColorMap:[Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mColor:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, ", ITALICS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, ", UNDERLINE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
