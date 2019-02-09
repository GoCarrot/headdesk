.class final Lio/teak/sdk/Teak$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lio/teak/sdk/Teak$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/Teak$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/teak/sdk/Teak$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 220
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    iget-object v1, p0, Lio/teak/sdk/Teak$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/Teak$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/teak/sdk/Teak$2;->c:Ljava/lang/String;

    .line 1150
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1151
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "track_event.error"

    const-string v2, "actionId can not be null or empty for trackEvent(), ignoring."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_1
    :goto_0
    return-void

    .line 1155
    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_3

    .line 1156
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1157
    :cond_3
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "track_event.error"

    const-string v2, "objectTypeId can not be null or empty if objectInstanceId is present for trackEvent(), ignoring."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1161
    :cond_4
    sget-object v4, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v5, "track_event"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "actionId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    const-string v8, "objectTypeId"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v2, v6, v7

    const/4 v7, 0x4

    const-string v8, "objectInstanceId"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v3, v6, v7

    invoke-static {v6}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 1163
    invoke-virtual {v0}, Lio/teak/sdk/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1165
    const-string v4, "action_type"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1167
    const-string v1, "object_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1170
    const-string v1, "object_instance_id"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    :cond_6
    new-instance v1, Lio/teak/sdk/c/n;

    invoke-direct {v1, v0}, Lio/teak/sdk/c/n;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    goto :goto_0
.end method
