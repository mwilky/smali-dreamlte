.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

.field public static final enum ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

.field public static final enum INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

.field public static final enum OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const-string v1, "OUTPUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const-string v1, "ALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object v0
.end method
