.class Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolution"
.end annotation


# instance fields
.field density:I

.field height:I

.field name:Ljava/lang/String;

.field width:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iput p3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iput p4, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v4, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v4, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    iget v4, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget v1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget v1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolution(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
