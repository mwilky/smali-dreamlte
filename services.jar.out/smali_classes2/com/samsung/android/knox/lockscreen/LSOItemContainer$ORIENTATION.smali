.class public final enum Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
.super Ljava/lang/Enum;
.source "LSOItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ORIENTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

.field public static final enum HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

.field public static final enum VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const-string v1, "HORIZONTAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    return-object v0
.end method
