.class public Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;
.super Ljava/lang/Object;
.source "SessionManagerImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    }
.end annotation


# static fields
.field private static final KEY_SESSION:Ljava/lang/String; = "com.upsight.session_callbacks"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREFERENCES_KEY_JSON_CONFIG:Ljava/lang/String; = "session_manager_json_config"

.field private static final PREFERENCES_KEY_LAST_KNOWN_SESSION_TIME:Ljava/lang/String; = "last_known_session_time"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mBackgroundSession:Lcom/upsight/android/analytics/internal/session/Session;

.field private final mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private mConfigParser:Lcom/upsight/android/analytics/internal/session/ConfigParser;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

.field private mLastKnownSessionTs:J

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mSession:Lcom/upsight/android/analytics/internal/session/Session;

.field private mStopRequestedTs:J

.field private mUpsight:Lcom/upsight/android/UpsightContext;

.field protected mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/analytics/internal/session/ConfigParser;Lcom/upsight/android/analytics/internal/session/Clock;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p3, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p4, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p5, "configParser"    # Lcom/upsight/android/analytics/internal/session/ConfigParser;
    .param p6, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 121
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mConfigParser:Lcom/upsight/android/analytics/internal/session/ConfigParser;

    .line 122
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 124
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 125
    new-instance v0, Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;-><init>()V

    invoke-static {p1, v0}, Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;->create(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/BackgroundSessionInitializer;)Lcom/upsight/android/analytics/internal/session/BackgroundSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mBackgroundSession:Lcom/upsight/android/analytics/internal/session/Session;

    .line 126
    const-string v0, "last_known_session_time"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    .line 129
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->loadSessionHook()Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    .line 132
    invoke-interface {p3, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 135
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->fetchCurrentConfig()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->applyConfiguration(Ljava/lang/String;)Z

    .line 136
    return-void
.end method

.method private applyConfiguration(Ljava/lang/String;)Z
    .locals 8
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 254
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mConfigParser:Lcom/upsight/android/analytics/internal/session/ConfigParser;

    invoke-virtual {v4, p1}, Lcom/upsight/android/analytics/internal/session/ConfigParser;->parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    move-result-object v0

    .line 255
    .local v0, "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    :cond_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "New config is invalid"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 268
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :goto_0
    return v2

    .line 259
    .restart local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :cond_1
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    invoke-virtual {v0, v4}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "New config ignored because it is equal to current config"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to apply new config"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-interface {v4, v5, v6, v2}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 268
    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v5, "session_manager_json_config"

    invoke-static {v4, v5, p1}, Lcom/upsight/android/internal/util/PreferencesHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private fetchCurrentConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v1, "session_manager_json_config"

    const-string v2, "{\"session_gap\": 120}"

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isExpired()Z
    .locals 4

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    iget-wide v2, v2, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 297
    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    iget-wide v2, v2, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    .line 297
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSessionNull()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSessionHook()Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 209
    :try_start_0
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 210
    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    .line 209
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 211
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 212
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v5, "com.upsight.session_callbacks"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    const-string v5, "com.upsight.session_callbacks"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 215
    .local v4, "session":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 216
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Class %s must implement %s!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 218
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 217
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Class: %s was not found."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "session":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 220
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "session":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 223
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Class: %s does not have public access."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 229
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "session":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 230
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Package name missing!?"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "session":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/InstantiationException;
    :try_start_5
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Class: %s could not be instantiated"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method private startSession(ZZLcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 6
    .param p1, "isSessionNull"    # Z
    .param p2, "isExpired"    # Z
    .param p3, "initializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    const-wide/16 v4, 0x0

    .line 308
    sget-object v2, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->PUSH:Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    invoke-interface {p3}, Lcom/upsight/android/analytics/internal/session/SessionInitializer;->getType()Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/internal/session/SessionInitializer$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 311
    .local v0, "fromPush":Z
    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 314
    .local v1, "sessionIsStopped":Z
    :goto_0
    iput-wide v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    .line 316
    if-nez v0, :cond_0

    if-eqz p2, :cond_4

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge(Lcom/upsight/android/UpsightContext;)V

    .line 321
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    new-instance v3, Lcom/upsight/android/analytics/provider/UpsightSessionContext;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-direct {v3, v4}, Lcom/upsight/android/analytics/provider/UpsightSessionContext;-><init>(Lcom/upsight/android/UpsightContext;)V

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 323
    invoke-static {v4}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->getLatestSessionInfo(Landroid/content/Context;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v4

    .line 322
    invoke-interface {v2, v3, v4}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onStart(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Lcom/upsight/android/analytics/session/UpsightSessionInfo;)V

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-static {v2, v3, p3}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->incrementAndCreate(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    .line 331
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 334
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-interface {v2, v3}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onStarted(Lcom/upsight/android/UpsightContext;)V

    .line 373
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v2}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    .line 374
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v3, "last_known_session_time"

    iget-wide v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    invoke-static {v2, v3, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 376
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    return-object v2

    .line 311
    .end local v1    # "sessionIsStopped":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 337
    .restart local v1    # "sessionIsStopped":Z
    :cond_4
    if-eqz p1, :cond_6

    .line 339
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v2, :cond_5

    .line 340
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    new-instance v3, Lcom/upsight/android/analytics/provider/UpsightSessionContext;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-direct {v3, v4}, Lcom/upsight/android/analytics/provider/UpsightSessionContext;-><init>(Lcom/upsight/android/UpsightContext;)V

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 341
    invoke-static {v4}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->getLatestSessionInfo(Landroid/content/Context;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v4

    .line 340
    invoke-interface {v2, v3, v4}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onResume(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Lcom/upsight/android/analytics/session/UpsightSessionInfo;)V

    .line 346
    :cond_5
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-static {v2, v3, p3}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->create(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    .line 349
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 352
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-interface {v2, v3}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onResumed(Lcom/upsight/android/UpsightContext;)V

    goto :goto_1

    .line 355
    :cond_6
    if-eqz v1, :cond_2

    .line 357
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v2, :cond_7

    .line 358
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    new-instance v3, Lcom/upsight/android/analytics/provider/UpsightSessionContext;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-direct {v3, v4}, Lcom/upsight/android/analytics/provider/UpsightSessionContext;-><init>(Lcom/upsight/android/UpsightContext;)V

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 359
    invoke-static {v4}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->getLatestSessionInfo(Landroid/content/Context;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v4

    .line 358
    invoke-interface {v2, v3, v4}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onResume(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Lcom/upsight/android/analytics/session/UpsightSessionInfo;)V

    .line 364
    :cond_7
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 367
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-interface {v2, v3}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onResumed(Lcom/upsight/android/UpsightContext;)V

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundSession()Lcom/upsight/android/analytics/internal/session/Session;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/upsight/android/UpsightContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mBackgroundSession:Lcom/upsight/android/analytics/internal/session/Session;

    return-object v0
.end method

.method public getLatestSessionInfo()Lcom/upsight/android/analytics/session/UpsightSessionInfo;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->getLatestSessionInfo(Landroid/content/Context;)Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSession()Lcom/upsight/android/analytics/internal/session/Session;
    .locals 6

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4}, Lcom/upsight/android/UpsightContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/upsight/android/UpsightContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isSessionNull()Z

    move-result v1

    .line 154
    .local v1, "isSessionNull":Z
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isExpired()Z

    move-result v0

    .line 155
    .local v0, "isExpired":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    new-instance v2, Lcom/upsight/android/analytics/internal/session/StandardSessionInitializer;

    invoke-direct {v2}, Lcom/upsight/android/analytics/internal/session/StandardSessionInitializer;-><init>()V

    invoke-direct {p0, v1, v0, v2}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->startSession(ZZLcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 158
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    .end local v0    # "isExpired":Z
    .end local v1    # "isSessionNull":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onApplicationStatusUpdated(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 4
    .param p1, "statusEvent"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    .line 196
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v1, "last_known_session_time"

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 198
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionPauseEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionPauseEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/session/UpsightSessionPauseEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConfigurationCreated(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    const-string v0, "upsight.configuration.session_manager"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->applyConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 4
    .param p1, "initializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/upsight/android/UpsightContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 165
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isSessionNull()Z

    move-result v0

    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isExpired()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->startSession(ZZLcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession()V
    .locals 4

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->getSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v0

    .line 171
    .local v0, "currentSession":Lcom/upsight/android/analytics/internal/session/Session;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    .line 172
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/session/Session;->updateDuration(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 170
    .end local v0    # "currentSession":Lcom/upsight/android/analytics/internal/session/Session;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
