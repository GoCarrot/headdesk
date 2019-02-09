.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final requestIntervalMs:J

.field public final retryMultiplierMs:J

.field public final retryPowerBase:D

.field public final retryPowerExponentMax:I


# direct methods
.method constructor <init>(JJDI)V
    .locals 1
    .param p1, "requestIntervalMs"    # J
    .param p3, "retryMultiplierMs"    # J
    .param p5, "retryPowerBase"    # D
    .param p7, "retryPowerExponentMax"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestIntervalMs:J

    .line 74
    iput-wide p3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryMultiplierMs:J

    .line 75
    iput-wide p5, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerBase:D

    .line 76
    iput p7, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerExponentMax:I

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 93
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 96
    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 98
    .local v0, "that":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestIntervalMs:J

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestIntervalMs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryMultiplierMs:J

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryMultiplierMs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerBase:D

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerBase:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_4

    iget v3, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerExponentMax:I

    iget v4, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerExponentMax:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 83
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestIntervalMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryMultiplierMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerBase:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->retryPowerExponentMax:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
