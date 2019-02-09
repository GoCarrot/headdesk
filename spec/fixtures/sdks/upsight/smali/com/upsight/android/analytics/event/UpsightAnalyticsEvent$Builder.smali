.class public abstract Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;
.super Ljava/lang/Object;
.source "UpsightAnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent",
        "<TU;TP;>;U:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder<TT;TU;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 6
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder<TT;TU;TP;>;"
    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;->build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    move-result-object v1

    .line 113
    .local v1, "result":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "TT;"
    const-string v2, "com.upsight.extension.analytics"

    invoke-virtual {p1, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 114
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V

    .line 123
    :goto_0
    return-object v1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    const-string v4, "Failed to record event with invalid schema"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    const-string v4, "com.upsight.extension.analytics must be registered in your Android Manifest"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final recordSessionless(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 6
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder<TT;TU;TP;>;"
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;->build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    move-result-object v1

    .line 98
    .local v1, "result":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "TT;"
    const-string v2, "com.upsight.extension.analytics"

    invoke-virtual {p1, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 99
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_1

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->recordSessionless(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V

    .line 108
    :goto_0
    return-object v1

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    const-string v4, "Failed to record event with invalid schema"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    const-string v4, "com.upsight.extension.analytics must be registered in your Android Manifest"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
