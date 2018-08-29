package app.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;

import app.model.SubscriberMessage;

/**
 * Acts as Subscriber for Subscription 2.
 * <p>
 * Responsible for
 * </p>
 * <ul>
 * <li>Handling User Service & Template Service.</li>
 * <li>Publishing on provider specific topics</li>
 * </ul>
 * 
 * @author adarshsinghal
 *
 */
public class NotificationService {

	private UserService userService;

	public NotificationService() {
		userService = new UserService();
	}

	/**
	 * Uses SyncPullMessageHandler for pulling messages.
	 * 
	 * @param maxMessageStr
	 * @param returnImmediatelyStr
	 * @return List&lt;SubscriberMessage&gt;
	 * @throws IOException
	 */
	public List<SubscriberMessage> pullMessages(String maxMessageStr, String returnImmediatelyStr) throws IOException {
		SyncPullMessageHandler pullHandler = new SyncPullMessageHandler();
		return pullHandler.pullMessages(maxMessageStr, returnImmediatelyStr);
	}

	/**
	 * @param messageList
	 * @throws ServletException
	 */
	public void sendMessagesToUser(List<SubscriberMessage> messageList) throws ServletException {
		userService.sendMessagesToUser(messageList);
	}

}
