.class public final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;
.super Ljava/lang/Enum;
.source "SemAutoEnhanceNightShotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LevelSpeedUp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

.field public static final enum MULTICORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

.field public static final enum RESAMPLE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

.field public static final enum SINGLECORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    const-string v1, "SINGLECORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->SINGLECORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    const-string v1, "MULTICORE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->MULTICORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    const-string v1, "RESAMPLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->RESAMPLE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->SINGLECORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->MULTICORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->RESAMPLE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;
    .locals 1

    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    invoke-virtual {v0}, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    return-object v0
.end method
