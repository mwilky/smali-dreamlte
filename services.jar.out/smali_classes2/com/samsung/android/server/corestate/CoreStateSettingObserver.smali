.class public abstract Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
.super Landroid/database/ContentObserver;
.source "CoreStateSettingObserver.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateObserver;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoreStateSettingObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field mPref:Landroid/content/SharedPreferences;

.field protected final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final sIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final sSecureSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final sSharedPrefIntegerKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final sSystemSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSharedPrefIntegerKeyMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    const-string v5, ""

    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_5
    goto/16 :goto_c

    :cond_6
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_12

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_7
    move v7, v6

    :goto_3
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    :goto_4
    goto/16 :goto_7

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v8, :cond_9

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    goto :goto_4

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v8, :cond_c

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    goto :goto_4

    :cond_c
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSharedPrefIntegerKeyMap:Ljava/util/Map;

    if-ne p2, v8, :cond_10

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;

    if-nez v8, :cond_f

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "multiwindow.property"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;

    if-nez v8, :cond_e

    goto :goto_6

    :catchall_0
    move-exception v1

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;

    if-nez v8, :cond_d

    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v8, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_5
    throw v1

    :catch_0
    move-exception v8

    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;

    if-nez v8, :cond_e

    :goto_6
    const/4 v6, 0x0

    goto :goto_4

    :cond_e
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v8, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_7

    :cond_f
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v8, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_4

    :cond_10
    nop

    :goto_7
    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v6, v8, :cond_11

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    :cond_11
    goto/16 :goto_c

    :cond_12
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_19

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    const/4 v6, 0x0

    if-ne p2, v5, :cond_13

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    :goto_8
    goto :goto_9

    :cond_13
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_14

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    goto :goto_8

    :cond_14
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_15

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    goto :goto_8

    :cond_15
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_16

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6, p3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    goto :goto_8

    :cond_16
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_17

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6, p3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    goto :goto_8

    :cond_17
    nop

    :goto_9
    move v5, v6

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_18

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v0, 0x1

    :cond_18
    goto :goto_c

    :cond_19
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_1f

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    const-wide/16 v6, 0x0

    if-ne p2, v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    :goto_a
    goto :goto_b

    :cond_1a
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_1b

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_a

    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_a

    :cond_1c
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_1d

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6, v7, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v6

    goto :goto_a

    :cond_1d
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_1e

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v6, v7, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v6

    goto :goto_a

    :cond_1e
    nop

    :goto_b
    move-wide v5, v6

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1f

    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x1

    :cond_1f
    :goto_c
    goto/16 :goto_0

    :cond_20
    return v0
.end method


# virtual methods
.method public beginObserveCoreStateSettings()V
    .locals 7

    const-string v0, "CoreStateSettingObserver"

    const-string v1, "beginObserveCoreStateSettings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "CoreStateSettingObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginObserveCoreStateSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "CoreStateSettingObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginObserveCoreStateSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "CoreStateSettingObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginObserveCoreStateSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    return-void
.end method

.method public beginObserveCoreStateSettingsForSingleUser(I)V
    .locals 7

    const-string v0, "CoreStateSettingObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginObserveCoreStateSettingsForSingleUser(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "CoreStateSettingObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginObserveCoreStateSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "CoreStateSettingObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginObserveCoreStateSettings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public endObserveCoreStateSettingsForSingleUser([II)V
    .locals 3

    const-string v0, "CoreStateSettingObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endObserveCoreStateSettingsForSingleUser(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    if-eqz v2, :cond_1

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3

    const-string v0, "CoreStateSettingObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v0, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(I)V

    return-void
.end method

.method public populateState(Landroid/os/Bundle;I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    or-int/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->sSharedPrefIntegerKeyMap:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerObservingItems()V

    return-void
.end method
