.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

.field public static final enum ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

.field public static final enum TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

.field public static final enum UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    const-string v1, "TCP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    const-string v1, "UDP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    const-string v1, "ALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    return-object v0
.end method
