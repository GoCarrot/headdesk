.class Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v5, "Configuration"

    const-string v6, "Record config.expired"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent;->createBuilder()Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v5}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$100(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/UpsightContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent$Builder;->recordSessionless(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 145
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v0

    .line 146
    .local v0, "config":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    if-eqz v0, :cond_0

    .line 147
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$308(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)I

    .line 148
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v5}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)I

    move-result v5

    iget v6, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerExponentMax:I

    if-le v5, v6, :cond_1

    :goto_0
    invoke-static {v4, v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$302(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;I)I

    .line 149
    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryMultiplierMs:J

    long-to-double v4, v4

    iget-wide v6, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerBase:D

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)I

    move-result v1

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v2, v4

    .line 150
    .local v2, "delayTime":J
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v1, v2, v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$400(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;J)V

    .line 152
    .end local v2    # "delayTime":J
    :cond_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)I

    move-result v1

    goto :goto_0
.end method
