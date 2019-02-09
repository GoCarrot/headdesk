.class public Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
.super Ljava/lang/Object;
.source "ManagerConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;
        .annotation runtime Ljavax/inject/Named;
            value = "config-gson"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->mGson:Lcom/google/gson/Gson;

    .line 31
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    .locals 10
    .param p1, "configJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v0, "config":Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    new-instance v1, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;->requestInterval:J

    .line 50
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;->retryMultiplier:J

    .line 51
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;->retryPowerBase:D

    iget v8, v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;->retryPowerExponentMax:I

    invoke-direct/range {v1 .. v8}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;-><init>(JJDI)V

    .line 49
    return-object v1

    .line 45
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    :catch_0
    move-exception v9

    .line 46
    .local v9, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
