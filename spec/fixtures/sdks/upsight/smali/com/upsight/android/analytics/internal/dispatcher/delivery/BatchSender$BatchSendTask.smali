.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;
.super Ljava/lang/Object;
.source "BatchSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchSendTask"
.end annotation


# static fields
.field public static final NETWORK_ERROR:Ljava/lang/String; = "Network communication problems"

.field public static final SDK_DISABLED_ERROR:Ljava/lang/String; = "Upsight SDK disabled"


# instance fields
.field private mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .locals 0
    .param p2, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .line 300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 304
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/UpsightContext;

    move-result-object v3

    invoke-static {v3}, Lcom/upsight/android/Upsight;->isSdkEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    sget-object v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->SDK_DISABLED:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    const-string v6, "Upsight SDK disabled"

    invoke-static {v3, v4, v5, v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/UpsightContext;

    move-result-object v3

    invoke-static {v3}, Lcom/upsight/android/internal/util/NetworkHelper;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    sget-object v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    const-string v6, "Network communication problems"

    invoke-static {v3, v4, v5, v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$400(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

    move-result-object v3

    new-instance v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/UpsightContext;

    move-result-object v5

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    iget-object v7, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v7}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/google/gson/JsonParser;

    move-result-object v7

    iget-object v8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v8}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/session/Clock;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/google/gson/JsonParser;Lcom/upsight/android/analytics/internal/session/Clock;)V

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->send(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;

    move-result-object v1

    .line 316
    .local v1, "resp":Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    const/4 v2, 0x0

    .line 317
    .local v2, "response":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    iget-object v3, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->body:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$500(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

    move-result-object v3

    iget-object v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;->parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;

    move-result-object v2

    .line 319
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v4, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;->responses:Ljava/util/Collection;

    invoke-static {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$600(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Ljava/util/Collection;)V

    .line 322
    :cond_2
    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->isOk()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    invoke-static {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$700(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v1    # "resp":Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    .end local v2    # "response":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    sget-object v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    const-string v6, "Network communication problems"

    invoke-static {v3, v4, v5, v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "resp":Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    .restart local v2    # "response":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$800(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    const-string v4, "BatchSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " HTTP response code from server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    sget-object v6, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->SERVER:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;->error:Ljava/lang/String;

    :goto_1
    invoke-static {v4, v5, v6, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method
