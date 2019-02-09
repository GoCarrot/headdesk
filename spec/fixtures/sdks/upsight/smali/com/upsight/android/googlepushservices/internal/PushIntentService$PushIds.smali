.class Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
.super Ljava/lang/Object;
.source "PushIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/PushIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PushIds"
.end annotation


# instance fields
.field final campaignId:Ljava/lang/Integer;

.field final contentId:Ljava/lang/Integer;

.field final messageId:Ljava/lang/Integer;

.field final pushAnalytics:Ljava/lang/String;

.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/PushIntentService;


# direct methods
.method private constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .param p2, "messageId"    # Ljava/lang/Integer;
    .param p3, "campaignId"    # Ljava/lang/Integer;
    .param p4, "contentId"    # Ljava/lang/Integer;
    .param p5, "pushAnalytics"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->this$0:Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->messageId:Ljava/lang/Integer;

    .line 354
    iput-object p3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->campaignId:Ljava/lang/Integer;

    .line 355
    iput-object p4, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->contentId:Ljava/lang/Integer;

    .line 356
    iput-object p5, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->pushAnalytics:Ljava/lang/String;

    .line 357
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .param p2, "x1"    # Ljava/lang/Integer;
    .param p3, "x2"    # Ljava/lang/Integer;
    .param p4, "x3"    # Ljava/lang/Integer;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;

    .prologue
    .line 346
    invoke-direct/range {p0 .. p5}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;-><init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
